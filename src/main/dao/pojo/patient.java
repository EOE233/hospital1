package dao.pojo;

public class patient {
    private String P_id;
    private String P_psd;
    private String P_name;
    private String P_sex;
    private int P_age;

    public patient(){

    }

    public patient(String p_id,String p_psd,String p_name, String p_sex , int p_age){
        this.P_id = p_id;
        this.P_psd = p_psd;
        this.P_name = p_name;
        this.P_sex = p_sex;
        this.P_age = p_age;
    }

    public String getP_id() {
        return P_id;
    }

    public void setP_id(String p_id) {
        P_id = p_id;
    }

    public String getP_psd() {
        return P_psd;
    }

    public void setP_psd(String p_psd) {
        P_psd = p_psd;
    }

    public String getP_name() {
        return P_name;
    }

    public void setP_name(String p_name) {
        P_name = p_name;
    }

    public String getP_sex() {
        return P_sex;
    }

    public void setP_sex(String p_sex) {
        P_sex = p_sex;
    }

    public int getP_age() {
        return P_age;
    }

    public void setP_age(int p_age) {
        P_age = p_age;
    }
}
