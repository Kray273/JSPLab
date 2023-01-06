package dao;

public class ConnectionInform {
	// 드라이버 재사용을 위해 클래스 만들어서
	// public으로 다른곳에서도 사용가능
	public final static String DRIVER_CLASS = "org.mariadb.jdbc.Driver";
	public final static String JDBC_URL = "jdbc:mariadb://localhost:3306/memberdb";
	public final static String USERNAME = "jdbc";
	public final static String PASSWORD = "jdbc";
}
