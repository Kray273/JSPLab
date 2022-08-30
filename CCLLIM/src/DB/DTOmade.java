package DB;

public class DTOmade {

	private String made_no;
	private String user_id;
	private String made_title;
	private String made_content;
	private String made_raw;
	private String made_status;
	private String made_date;
	public String getMade_no() {
		return made_no;
	}
	public void setMade_no(String made_no) {
		this.made_no = made_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getMade_title() {
		return made_title;
	}
	public void setMade_title(String made_title) {
		this.made_title = made_title;
	}
	public String getMade_content() {
		return made_content;
	}
	public void setMade_content(String made_content) {
		this.made_content = made_content;
	}
	public String getMade_raw() {
		return made_raw;
	}
	public void setMade_raw(String made_raw) {
		this.made_raw = made_raw;
	}
	public String getMade_status() {
		return made_status;
	}
	public void setMade_status(String made_status) {
		this.made_status = made_status;
	}
	public String getMade_date() {
		return made_date;
	}
	public void setMade_date(String made_date) {
		this.made_date = made_date;
	}
	public DTOmade(String made_no, String user_id, String made_title, String made_content, String made_raw,
			String made_status, String made_date) {
		super();
		this.made_no = made_no;
		this.user_id = user_id;
		this.made_title = made_title;
		this.made_content = made_content;
		this.made_raw = made_raw;
		this.made_status = made_status;
		this.made_date = made_date;
	}
	
	
	
	
		
}
