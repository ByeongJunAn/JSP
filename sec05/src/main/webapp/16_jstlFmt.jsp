<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL FMT </title>
</head>
<body>
<pre>
<c:set var="now" value="<%= new java.util.Date() %>"></c:set>
\${now}:${now}
	   <fmt:formatDate value="${now}"/>
date : <fmt:formatDate value="${now}" type="date"/>
time : <fmt:formatDate value="${now}" type="time"/>
both : <fmt:formatDate value="${now}" type="both"/>
default : <fmt:formatDate value="${now}" type="both" dateStyle="default"/>
long : <fmt:formatDate value="${now}" type="both" dateStyle="long"/>
medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium"/>
short : <fmt:formatDate value="${now}" type="both" dateStyle="short"/>

pattern : "yyyy년 MM월 dd일 hh시 mm분 ss초" = <fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/>


default : <c:out value="${now}"/>
Korea KST : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<fmt:timeZone value="GMT">
Swiss GMT :  <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
</fmt:timeZone>

<fmt:timeZone value="GMT-8">>
New York GMT-8: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
</fmt:timeZone>

톰켓 서버의 기본 로케일 : <%= response.getLocale() %>

<fmt:setLocale value="ko_kr"/>
로케일은 한국어로 설정 후 로케일 확인 : <%= response.getLocale() %>
통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>

<fmt:setLocale value="ja_jp"/>
로케일은 일본어로 설정 후 로케일 확인 : <%= response.getLocale() %>
통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>


<fmt:setLocale value="en_US"/>
로케일은 영어로 설정 후 로케일 확인 : <%= response.getLocale() %>
통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>


</pre>
</body>
</html>