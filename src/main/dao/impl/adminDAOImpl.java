package dao.impl;


import dao.basedao.BaseDao;
import dao.dao.adminDAO;

public class adminDAOImpl extends BaseDao implements adminDAO {
    @Override
    public boolean adminLogin(String M_id, String M_pwd) {
        String sql = "select * from administrator where M_id = ? and M_pwd = ?";
        if(super.Query(sql,M_id,M_pwd).size()>0 ){
            return true;
        }else {
            return false;
        }
    }
}
