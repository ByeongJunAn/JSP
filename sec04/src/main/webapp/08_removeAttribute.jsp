<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 저장된 특정 객체 삭제하기</title>
</head>
<body>
<%
session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요");
session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요");
session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요");
%>
<h3>세션값을 삭제하기 전</h3>
<%
Enumeration names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.print(name + " : " + value + "<br>");
}
//특정 값 지우기
session.removeAttribute("s_name2");
session.removeAttribute("id");
session.removeAttribute("pwd");
session.removeAttribute("age");


out.println("<h3>세션값을 모두 삭제한 후 </h3>");

names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.print(name + " : " + value + "<br>");
} 
out.println("<h3>세션값을 모두 삭제한 후</h3>");


//몽땅 지우기
//session.invalidate();

if(request.isRequestedSessionIdValid()){ //최종상태를 알려준다.
	out.println("세션이 유효합니다.");
} else {
	out.println("세션이 유효하지 않습니다.");
}
//session.invalidate();
%>

</body>
</html>