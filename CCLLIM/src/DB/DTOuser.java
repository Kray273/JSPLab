package DB;

public class DTOuser {

	private String user_id;
	private String user_no;
	private String user_pw;
	private String user_tel;
	private String user_email;
	private String user_addr;
	private String user_level;
	private String user_date;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_no() {
		return user_no;
	}
	public void setUser_no(String user_no) {
		this.user_no = user_no;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_level() {
		return user_level;
	}
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	public String getUser_date() {
		return user_date;
	}
	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	public DTOuser(String user_id, String user_no, String user_pw, String user_tel, String user_email, String user_addr,
			String user_level, String user_date) {
		super();
		this.user_id = user_id;
		this.user_no = user_no;
		this.user_pw = user_pw;
		this.user_tel = user_tel;
		this.user_email = user_email;
		this.user_addr = user_addr;
		this.user_level = user_level;
		this.user_date = user_date;
	}
	
	
		
}
