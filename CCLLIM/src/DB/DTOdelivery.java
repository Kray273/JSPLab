package DB;

public class DTOdelivery {

	private String delivery_no;
	private String product_code;
	private String product_name;
	private String product_amout;
	private String user_id;
	private String user_addr;
	private String user_tel;
	private String user_email;
	private String delivery_status;
	private String delivery_done;
	private String delivery_date;
	public String getDelivery_no() {
		return delivery_no;
	}
	public void setDelivery_no(String delivery_no) {
		this.delivery_no = delivery_no;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_amout() {
		return product_amout;
	}
	public void setProduct_amout(String product_amout) {
		this.product_amout = product_amout;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
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
	public String getDelivery_status() {
		return delivery_status;
	}
	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
	}
	public String getDelivery_done() {
		return delivery_done;
	}
	public void setDelivery_done(String delivery_done) {
		this.delivery_done = delivery_done;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
	public DTOdelivery(String delivery_no, String product_code, String product_name, String product_amout,
			String user_id, String user_addr, String user_tel, String user_email, String delivery_status,
			String delivery_done, String delivery_date) {
		super();
		this.delivery_no = delivery_no;
		this.product_code = product_code;
		this.product_name = product_name;
		this.product_amout = product_amout;
		this.user_id = user_id;
		this.user_addr = user_addr;
		this.user_tel = user_tel;
		this.user_email = user_email;
		this.delivery_status = delivery_status;
		this.delivery_done = delivery_done;
		this.delivery_date = delivery_date;
	}

	
	
	
		
}
