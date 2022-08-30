package DB;

public class DTOproduct {

	private String product_code;
	private String product_name;
	private String product_price;
	private String product_amount;
	private String product_desc;
	private String product_img1;
	private String product_img2;
	private String product_img3;
	private String product_date;
	private String product_launch;
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
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_amount() {
		return product_amount;
	}
	public void setProduct_amount(String product_amount) {
		this.product_amount = product_amount;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getProduct_img1() {
		return product_img1;
	}
	public void setProduct_img1(String product_img1) {
		this.product_img1 = product_img1;
	}
	public String getProduct_img2() {
		return product_img2;
	}
	public void setProduct_img2(String product_img2) {
		this.product_img2 = product_img2;
	}
	public String getProduct_img3() {
		return product_img3;
	}
	public void setProduct_img3(String product_img3) {
		this.product_img3 = product_img3;
	}
	public String getProduct_date() {
		return product_date;
	}
	public void setProduct_date(String product_date) {
		this.product_date = product_date;
	}
	public String getProduct_launch() {
		return product_launch;
	}
	public void setProduct_launch(String product_launch) {
		this.product_launch = product_launch;
	}
	public DTOproduct(String product_code, String product_name, String product_price, String product_amount,
			String product_desc, String product_img1, String product_img2, String product_img3, String product_date,
			String product_launch) {
		super();
		this.product_code = product_code;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_amount = product_amount;
		this.product_desc = product_desc;
		this.product_img1 = product_img1;
		this.product_img2 = product_img2;
		this.product_img3 = product_img3;
		this.product_date = product_date;
		this.product_launch = product_launch;
	}
	
	
		
}
