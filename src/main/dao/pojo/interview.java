package dao.pojo;

import java.sql.Date;

//对应预约信息表
public class interview {
    private String I_id;
    private String P_id;
    private String D_id;
    private Date I_date;
    private String I_time;

    public interview(){

    }

    public interview(String I_id,String P_id,String D_id,Date I_date,String I_time){
        this.I_id = I_id;
        this.P_id = P_id;
        this.D_id = D_id;
        this.I_date = I_date;
        this.I_time = I_time;
    }

    public String getI_id() {
        return I_id;
    }

    public void setI_id(String i_id) {
        I_id = i_id;
    }

    public String getP_id() {
        return P_id;
    }

    public void setP_id(String p_id) {
        P_id = p_id;
    }

    public String getD_id() {
        return D_id;
    }

    public void setD_id(String d_id) {
        D_id = d_id;
    }

    public Date getI_date() {
        return I_date;
    }

    public void setI_date(Date i_date) {
        I_date = i_date;
    }

    public String getI_time() {
        return I_time;
    }

    public void setI_time(String i_time) {
        I_time = i_time;
    }
}
