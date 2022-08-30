package DB;

public class DTOraw {

	private String raw_code;
	private String raw_name;
	private String raw_amount;
	private String raw_image;
	private String raw_location;
	private String raw_date;
	public String getRaw_code() {
		return raw_code;
	}
	public void setRaw_code(String raw_code) {
		this.raw_code = raw_code;
	}
	public String getRaw_name() {
		return raw_name;
	}
	public void setRaw_name(String raw_name) {
		this.raw_name = raw_name;
	}
	public String getRaw_amount() {
		return raw_amount;
	}
	public void setRaw_amount(String raw_amount) {
		this.raw_amount = raw_amount;
	}
	public String getRaw_image() {
		return raw_image;
	}
	public void setRaw_image(String raw_image) {
		this.raw_image = raw_image;
	}
	public String getRaw_location() {
		return raw_location;
	}
	public void setRaw_location(String raw_location) {
		this.raw_location = raw_location;
	}
	public String getRaw_date() {
		return raw_date;
	}
	public void setRaw_date(String raw_date) {
		this.raw_date = raw_date;
	}
	public DTOraw(String raw_code, String raw_name, String raw_amount, String raw_image, String raw_location,
			String raw_date) {
		super();
		this.raw_code = raw_code;
		this.raw_name = raw_name;
		this.raw_amount = raw_amount;
		this.raw_image = raw_image;
		this.raw_location = raw_location;
		this.raw_date = raw_date;
	}
	
	
	
		
}
