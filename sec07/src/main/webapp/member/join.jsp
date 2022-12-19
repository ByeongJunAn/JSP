<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>
</head>
<body>

<h1> 회원 가입</h1>

	<form action= "" method="post" name="frm">
		<table>
			<tr>
					<td> 이름 </td>
					<td><input type="text" name="name" id="name"></td>
			</tr>
		
			<tr>
			
				    <td>아 이 디</td>
	
					<td><input type="text" name="userid" id="${userid}"></td>
			</tr>
					
			<tr>
					<td>비밀번호</td>
						 
					<td><input type="password" name="pwd" id="pwd"></td>
		   </tr>
	
			<tr>
					<td>비밀번호 확인</td>
					
					<td><input type="password" name="pwdc" id="pwdc"></td>
			</tr>
			
			<tr>
					<td>이메일</td>
					
					<td><input type="email" name="email" id="email"></td>
			</tr>
			
			<tr>
					<td>전화번호</td>
					
					<td><input type="number" name="phone" id="phone"></td>
			
			<tr>
					<td>등급</td>
					
					<td><input type="radio" name = "grade" id="grade" value="1" checked > 관리자
						<input type="radio" name = "grade" id="grade" value="0"> 일반회원 
	
	
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="확인" onclick="return loginCheck()">
						 	
							<input type="reset" value="취소">
						
					</tr>
					<tr>
						<td colspan="2">${message}</td>
					</tr>
	</table>
	</form>

</body>
</html>