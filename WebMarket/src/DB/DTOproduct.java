package DB;

public class DTOproduct {

	private String pno;
	private String pid;
	private String pname;
	private String pprice;
	private String pdesc;
	private String iname1;
	private String iname2;
	private String iname3;
	private String pdate;
	
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getIname1() {
		return iname1;
	}
	public void setIname1(String iname1) {
		this.iname1 = iname1;
	}
	public String getIname2() {
		return iname2;
	}
	public void setIname2(String iname2) {
		this.iname2 = iname2;
	}
	public String getIname3() {
		return iname3;
	}
	public void setIname3(String iname3) {
		this.iname3 = iname3;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	
	public DTOproduct(String pno, String pid, String pname, String pprice, String pdesc, String iname1, String iname2,
			String iname3, String pdate) {
		super();
		this.pno = pno;
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.pdesc = pdesc;
		this.iname1 = iname1;
		this.iname2 = iname2;
		this.iname3 = iname3;
		this.pdate = pdate;
	}
	
	
	
	
	
}
