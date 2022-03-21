package bean;

import java.sql.*;

public class DBBean {


    //private static final String PASSWORD = "123456";
    private static final String PASSWORD = "88888888";
    private static final String USER_NAME = "root";

    //private static final String URL = "10.120.128.32";
    //private static final String URL = "jdbc:mysql://localhost:3306/hospital?serverTimezone=UTC&characterEncoding=utf8&useUnicode=true&useSSL=false";
    private static final String URL = "jdbc:mysql://10.120.128.32:3306/test?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private Object PreparedStatement;

    public Connection JDBCon() {
        try {
            Class.forName(DRIVER_NAME);
            Connection connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
            System.out.println("连接成功");
            return connection;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 医生登录判断逻辑
     */
    public boolean doctorLogin(String name, String password) {
        Connection connection = JDBCon();
        Statement statement = null;

        try {
            statement = connection.createStatement();
            String sql = "select * from Doctor where D_id='" + name + "' and D_psd='" + password + "'";
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    /**
     * 医生注册
     */
    public boolean doctorRegister(String userName, String password, String name, String age, String sex, String id) {
        Connection connection = JDBCon();
        PreparedStatement preparedStatement = null;
        try {
            String sql = "insert into doctor values(?,?,?,?,?,?)";
            //stmt = connection.prepareStatement(sql);
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1,userName);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setInt(4, Integer.parseInt(age));
            preparedStatement.setString(5, sex);
            preparedStatement.setString(6, id);
            int r = preparedStatement.executeUpdate();
            if (r >= 0) {
                System.out.println("注册成功");
                return true;
            } else {
                System.out.println("注册失败");
                return false;
            }
        } catch (SQLException e) {
            System.out.println("注册失败");
            e.printStackTrace();
            return false;
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 患者信息查询
     */
    public ResultSet Query(String sql)
    {

        try {
            Connection conn = JDBCon();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            return rs;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * 患者信息修改
     */
    public void update(String sql){
        try {
            Connection conn = JDBCon();
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //lyy-----------------------------------------------------------
    /**
     * 患者登录判断逻辑
     */
    public boolean patientLogin(String name, String password) {
        Connection connection = JDBCon();
        Statement statement = null;

        try {
            statement = connection.createStatement();
            String sql = "select * from patient where P_id='" + name + "' and P_psd='" + password + "'";
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    /**
     * 患者注册
     */
    public boolean patientRegister(String id, String name, String password, String age, String sex) {
        Connection connection = JDBCon();
        PreparedStatement preparedStatement = null;


        try {
            String sql = "insert into patient values(?,?,?,?,?)";

            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1,id);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, sex);
            preparedStatement.setInt(5, Integer.parseInt(age));

            int r = preparedStatement.executeUpdate();
            if (r >= 0) {
                System.out.println("注册成功");
                return true;
            } else {
                System.out.println("注册失败");
                return false;
            }
        } catch (SQLException e) {
            System.out.println("注册失败");
            e.printStackTrace();
            return false;
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


}
