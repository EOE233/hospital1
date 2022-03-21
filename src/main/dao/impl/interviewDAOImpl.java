package dao.impl;


import dao.basedao.BaseDao;
import dao.dao.interviewDAO;
import dao.pojo.interview;
import dao.pojo.patient;

import java.util.ArrayList;

public class interviewDAOImpl extends BaseDao implements interviewDAO {

    @Override
    public void updateInterview(interview interview) {
        String sql = "UPDATE interview SET P_id = ? , D_id = ? , I_date = ? , I_time = ? WHERE I_id = ?";
        super.update(sql,interview.getP_id(),interview.getD_id(),interview.getI_date(),interview.getI_time(),interview.getI_id());
    }

    @Override
    public void delInterview(String id) {
        String sql = "delete from interview where I_id = ?";
        super.update(sql,id);
    }

    @Override
    public void addInterview(interview interview) {
        String sql = "insert into interview values(?,?,?,?,?)";
        super.update(sql,interview.getI_id(),interview.getP_id(),interview.getD_id(),interview.getI_date(),interview.getI_time());
    }

    @Override
    public ArrayList<ArrayList> selectInterview(String sql) {

        return super.Query(sql);
    }

    @Override
    public ArrayList<ArrayList> selectInterviewI_id(String sql, String I_id) {
        return super.Query(sql,I_id);
    }



    @Override
    public ArrayList<ArrayList> selectInterview_Pid(patient patient) {
        String sql = "select * from interview where P_id = ?";
        return super.Query(sql,patient.getP_id());
    }
}
