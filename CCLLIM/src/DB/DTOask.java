package DB;

public class DTOask {

	private String ask_no;
	private String ask_title;
	private String user_id;
	private String made_content;
	private String ask_sol;
	private String ask_sign;
	private String ask_status;
	private String ask_day;
	private String made_date;
	public String getAsk_no() {
		return ask_no;
	}
	public void setAsk_no(String ask_no) {
		this.ask_no = ask_no;
	}
	public String getAsk_title() {
		return ask_title;
	}
	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getMade_content() {
		return made_content;
	}
	public void setMade_content(String made_content) {
		this.made_content = made_content;
	}
	public String getAsk_sol() {
		return ask_sol;
	}
	public void setAsk_sol(String ask_sol) {
		this.ask_sol = ask_sol;
	}
	public String getAsk_sign() {
		return ask_sign;
	}
	public void setAsk_sign(String ask_sign) {
		this.ask_sign = ask_sign;
	}
	public String getAsk_status() {
		return ask_status;
	}
	public void setAsk_status(String ask_status) {
		this.ask_status = ask_status;
	}
	public String getAsk_day() {
		return ask_day;
	}
	public void setAsk_day(String ask_day) {
		this.ask_day = ask_day;
	}
	public String getMade_date() {
		return made_date;
	}
	public void setMade_date(String made_date) {
		this.made_date = made_date;
	}
	public DTOask(String ask_no, String ask_title, String user_id, String made_content, String ask_sol, String ask_sign,
			String ask_status, String ask_day, String made_date) {
		super();
		this.ask_no = ask_no;
		this.ask_title = ask_title;
		this.user_id = user_id;
		this.made_content = made_content;
		this.ask_sol = ask_sol;
		this.ask_sign = ask_sign;
		this.ask_status = ask_status;
		this.ask_day = ask_day;
		this.made_date = made_date;
	}
		
	
		
}
