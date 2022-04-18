<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	//데이터베이스 연동
	Class.forName("oracle.jdbc.driver.OracleDriver");
/*
	//String db = "jdbc:oracle:thin:@db202202040945_high?TNS_ADMIN=C://Users//Public//Wallet_DB202202040945";
	String db = "jdbc:oracle:thin:@db202202040945_high?TNS_ADMIN=C://Users/kry/Desktop/TourGuide/dbwall/Wallet_DB202202040945/";
	String userId = "NAS";
	String userPw = "NtourAguideS1";
	Connection con = DriverManager.getConnection(db, userId, userPw);
*/

	String db = "jdbc:oracle:thin:@localhost:1521:xe";
	String userId = "kimryone";
	String userPw = "kimryone";
	Connection con = DriverManager.getConnection(db, userId, userPw);
	//SQL 실행
	Statement stmt = con.createStatement();
	//결과
	//ResultSet rs = stmt.executeQuery("select *from member");
	ResultSet rs = stmt.executeQuery("select *from mmmst");
	rs.next();
	//out.print(rs.getString("memName") + "  / " +rs.getString("memId"));
	out.print(rs.getString("mmId") + "  / " +rs.getString("mmPwd"));
	rs.close();
	stmt.close();
	con.close();

%>
</body>
</html>