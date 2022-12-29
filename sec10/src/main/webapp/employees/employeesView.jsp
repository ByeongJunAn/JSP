<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 상세보기 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/employees.js"></script>
</head>
<body>
<div id="wrap" align="center">
	<h1>프로필 상세보기</h1>
		<table>
			<tr>
				<th>아이디</th>
				<td>${employees.id}</td>
			
				<th>이름</th>
				<td>${employees.name}</td>
			</tr>
			
			<tr>
				<th>권한</th>
				<td>${employees.lev}</td>
			
				<th>입사일</th>
				<td>${employees.enter}</td>
			</tr>	
				
			<tr>
				<th>성별</th>
				<td colspan ="3">${employees.gender} </td>
				
			</tr>	
			
			<tr>
				<th>번호</th>
				<td colspan ="3">${employees.phone}</td>
			</tr>	
		</table>
		<br></br>
		
		<input type="button" value="프로필 수정" onclick="open_win('EmployeesServlet?command=employees_check_pass_form&id=${employees.id}', 'update')">	
		<input type="button" value="프로필 삭제" onclick="open_win('EmployeesServlet?command=employees_check_pass_form&id=${employees.id}', 'delete')">	
		<input type="button" value="프로필 리스트" onclick="location.href='EmployeesServlet?command=employees_List'">	
		<input type="button" value="프로필 등록" onclick="location.href='EmployeesServlet?command=employees_Write_form'">	
		


</div>

</body>
</html>