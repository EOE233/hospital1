package dao.impl;


import dao.basedao.BaseDao;
import dao.dao.patientDAO;

import java.util.ArrayList;

public class patientDAOImpl extends BaseDao implements patientDAO {
    @Override
    public ArrayList<ArrayList> patientLogin(String p_id, String p_psd) {
        String sql = "select * from patient where P_id = ? and P_psd = ?";
        return super.Query(sql,p_id,p_psd);
    }
}
