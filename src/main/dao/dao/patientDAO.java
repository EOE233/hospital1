package dao.dao;

import java.util.ArrayList;

public interface patientDAO {
    //患者登录方法
    ArrayList<ArrayList> patientLogin(String p_id , String p_psd);
}
