package dao.impl;


import dao.basedao.BaseDao;
import dao.dao.doctorDAO;
import dao.pojo.doctor;

import java.util.ArrayList;

public class doctorDAOImpl extends BaseDao implements doctorDAO {
    @Override
    public ArrayList<ArrayList> selectDoctor() {
        String sql = "select * from doctor";
        return super.Query(sql);
    }

    @Override
    public void delDoctor(String D_id) {
        String sql = "delete from doctor where D_id = ?";
        super.update(sql,D_id);
    }

    @Override
    public ArrayList<ArrayList> selectDoctorPid(String sql,String D_id) {
        return super.Query(sql,D_id);
    }

    @Override
    public void updateDoctor(doctor doctor) {
        String sql = "UPDATE doctor SET D_psd = ? , D_name = ? , D_age = ? , D_sex = ? , SUR_id = ? WHERE D_id = ?";
        super.update(sql,doctor.getD_psd(),doctor.getD_name(),doctor.getD_age(),doctor.getD_sex(),doctor.getSUR_id(),doctor.getD_id());
    }

    @Override
    public void addDoctor(doctor doctor) {
        String sql = "insert into doctor values(?,?,?,?,?,?)";
        super.update(sql,doctor.getD_id(),doctor.getD_psd(),doctor.getD_name(),doctor.getD_age(),doctor.getD_sex(),doctor.getSUR_id());
    }
}
