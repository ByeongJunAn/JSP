<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    
<%! 
	Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:mysql://localhost:3306/keduit?serverTimezone=UTC";
	String uid ="root";
	String pass = "0000";
	String sql = "insert into member2 values(?,?,?)";
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

String name  = request.getParameter("name");
String price = request.getParameter("price");
String des = request.getParameter("des");


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	conn = DriverManager.getConnection(url, uid, pass);
	
	
	pstmt = conn.prepareStatement(sql);
	
	
	pstmt.setString(1, name);
	pstmt.setInt(2, Integer.parseInt(price));
	pstmt.setString(3, des);

	
	
	pstmt.executeUpdate();
	
} catch(Exception e){
	e.printStackTrace();
} finally{

	try{
		if(pstmt != null) pstmt.close();
		
		if(conn != null) conn.close();
		
		
	} catch (Exception e){
		e.printStackTrace();
	}
}

%>

<a href="02_allitem.jsp">결과 보기</a>




</body>
</html>