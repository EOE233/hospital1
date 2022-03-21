package dao.dao;



import dao.pojo.interview;
import dao.pojo.patient;

import java.util.ArrayList;

public interface interviewDAO {
    //修改指定的预约记录
    void updateInterview(interview interview);

    //根据删除指定的预约记录
    void delInterview(String id);

    //添加新预约记录
    void addInterview(interview interview);


    ArrayList<ArrayList> selectInterview(String sql);
    //查询
    ArrayList<ArrayList> selectInterviewI_id(String sql,String I_id);

    //根据患者P_id 查看预约信息
    ArrayList<ArrayList> selectInterview_Pid(patient patient);

}
