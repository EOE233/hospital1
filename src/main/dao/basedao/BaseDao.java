package dao.basedao;

import java.sql.*;
import java.util.ArrayList;

public abstract class BaseDao {
    public final String DRIVER = "com.mysql.cj.jdbc.Driver" ;
    public final String URL = "jdbc:mysql://10.120.128.32:3306/test?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    public final String USER = "root";
    public final String PWD = "88888888" ;

    protected Connection conn ;
    protected PreparedStatement psmt ;
    protected ResultSet rs ;
    //连接数据库的方法
    protected Connection getConn(){
        try {
            //1.加载驱动
            Class.forName(DRIVER);
            //2.通过驱动管理器获取连接对象
            System.out.println("连接成功");
            return DriverManager.getConnection(URL, USER, PWD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null ;
    }
    //关闭数据库连接的方法
    protected void close(ResultSet rs , PreparedStatement psmt , Connection conn){
        try {
            if (rs != null) {
                rs.close();
            }
            if(psmt!=null){
                psmt.close();
            }
            if(conn!=null && !conn.isClosed()){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //更新操作 增删改
    public int update(String sql,Object... params){
        int row = 0; // 受影响的行数

        try {
            // 得到数据库连接
            conn = getConn();
            // 预编译
            psmt = conn.prepareStatement(sql);
            // 如果有参数，则设置参数，下标从1开始
            if (params != null && params.length > 0) {
                // 循环设置参数，设置参数类型为Object
                for (int i = 0; i < params.length; i++){
                    psmt.setObject(i+1, params[i]);
                }
            }
            // 执行更新，返回受影响的行数
            row = psmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭资源
            close(null, psmt, conn);
        }
        return row;
    }
    //查询
    public ArrayList<ArrayList> Query(String sql, Object... params) {

        try {
            ArrayList<ArrayList> memList = new ArrayList<>();
            // 得到数据库连接
            conn = getConn();
            // 预编译
            psmt = conn.prepareStatement(sql);
            // 如果有参数，则设置参数，下标从1开始
            if (params != null && params.length > 0) {
                // 循环设置参数，设置参数类型为Object
                for (int i = 0; i < params.length; i++){
                    psmt.setObject(i+1, params[i]);
                }
            }
            ResultSet rs = psmt.executeQuery();// 返回结果集
            ResultSetMetaData rsm=rs.getMetaData();//获得结果集的元数据
            int count=rsm.getColumnCount();//获得结果集里字段个数
            while (rs.next()) {
                ArrayList line = new ArrayList();
                for (int i = 1 ; i <=count ; i++){
                    line.add(rs.getString(i));
                }
                memList.add(line);
            }
            return memList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(rs,psmt,conn);
        }
        return null;
    }
}
