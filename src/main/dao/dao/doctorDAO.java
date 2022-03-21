package dao.dao;



import dao.pojo.doctor;

import java.util.ArrayList;

public interface doctorDAO {
    //查询所有医生信息
    ArrayList<ArrayList> selectDoctor();
    //根据医生id删除医生
    void delDoctor(String D_id);
    //根据医生ID查询医生信息
    ArrayList<ArrayList> selectDoctorPid(String sql,String D_id);

    void updateDoctor(doctor doctor);

    void addDoctor(doctor doctor);
}
