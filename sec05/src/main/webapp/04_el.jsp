<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language </title>
</head>
<body>

<!-- 3개 모두 같은 말이다 -->
${"안녕하세요"}
<%="안녕하세요" %>
<% out.print("안녕하세요");%><br>

<% String input=null; %>
표현식에서의 null : <%=input%><br>
El에서의 null표현 ${null }<br>
El에서의 empty : ${empty input}<br>


<h3>EL의 연산자</h3>
\${5+2} : ${5+2} <br>
\${2 gt 10} : ${2 gt 10}<br>
\${(5>2) ? 5 : 2} : ${(5>2)? 5:2}<br>
\${(5>2)||(2<10)} : ${(5>2) || (2<10)}<br>

</body>
</html>