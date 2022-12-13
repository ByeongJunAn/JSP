<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

<%	
	response.setContentType("text/html; charset=UTF-8");
	request.setCharacterEncoding("UTF-8");	

	String name = request.getParameter("name");
	String gender= request.getParameter("gender");
	
	
	
	
	out.println("설문 조사 결과");
	out.print("이름 : ");
	out.println(name);
	out.print("성별 : ");
	if(gender.equals("남자")){
	out.println("<b>남자</b><br>");
	} else {
		out.println("<b>여자</b><br>");
	}
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 계절은 ");
	for (String season : seasonArr){
		int n = Integer.parseInt(season);
		switch (n){
		case 1:
			out.println("<b> 봄 </b>");
			break;
		case 2:
			out.println("<b> 여름 </b>");
			break;
		case 3:
			out.println("<b> 가을 </b>");
			break;
		case 4:
			out.println("<b> 겨울 </b>");
			break;
		}
	}
	
	
	out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
	
	
%>
</body>
</html>