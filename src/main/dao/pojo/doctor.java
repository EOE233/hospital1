package dao.pojo;

public class doctor {
	private String D_id;
	private String D_psd;
	private String D_name;
	private int D_age;
	private String D_sex;
	private String SUR_id;

	public doctor(String d_id, String d_psd, String d_name, int d_age, String d_sex, String sur_id) {
		this.D_id = d_id;
		this.D_psd = d_psd;
		this.D_name = d_name;
		this.D_age = d_age;
		this.D_sex = d_sex;
		this.SUR_id = sur_id;
	}

	public String getD_id() {
		return D_id;
	}

	public void setD_id(String d_id) {
		D_id = d_id;
	}

	public String getD_psd() {
		return D_psd;
	}

	public void setD_psd(String d_psd) {
		D_psd = d_psd;
	}

	public String getD_name() {
		return D_name;
	}

	public void setD_name(String d_name) {
		D_name = d_name;
	}

	public int getD_age() {
		return D_age;
	}

	public void setD_age(int d_age) {
		D_age = d_age;
	}

	public String getD_sex() {
		return D_sex;
	}

	public void setD_sex(String d_sex) {
		D_sex = d_sex;
	}

	public String getSUR_id() {
		return SUR_id;
	}

	public void setSUR_id(String SUR_id) {
		this.SUR_id = SUR_id;
	}
}
