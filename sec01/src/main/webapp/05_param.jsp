<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿼리 스트링</title>
<script type="text/javascript" src="param.js"></script>
</head>
<body>
  <form name="frm" method="post" action="ParamServlet">
    이름 : <input type="text" name="name"><br>
    주민번호 : <input type="number" name="jumin_1"> -
    		 <input type="number" name="jumin_2"><br>
    아이디 : <input type="text" name="id"><br>
    나 이 : <input type="text" name="age"><br>
    비밀번호 : <input type="password" name="password"><br>
    메일/SMS 정보 수신 :<input type="radio" name="mail" value="수신"> 수신
    	  			<input type="radio" name="mail" value="수신거부"> 수신거부 <br>
   	우편번호 : <input type="number" name="m_number_1"> - 
   			 <input type="number" name="m_number_2"><br>
    주소 : <input type="text" name="addr"><br>
    핸드폰 번호 : <input type="text" name="phone"><br>
    직업 : <select id="job" name="job">
    			<option value="">선택하세요</option>
    			<option value="공무원"> 공무원 </option>
    			<option value="컴퓨터/인터넷"> 컴퓨터/인터넷 </option>
    			<option value="언론"> 언론 </option>
    	  </select>
    	  <br>
    
    
    
    	  			
    	  			
    관심분야:		<input type="checkbox" name="att" value="생두"> 생두
    			<input type="checkbox" name="att" value="원두"> 원두
    			<input type="checkbox" name="att" value="로스팅"> 로스팅
    			<input type="checkbox" name="att" value="핸드드립"> 핸드르립
    			<input type="checkbox" name="att" value="에스프레소"> 에스프레소
    			<input type="checkbox" name="att" value="창업"> 창업
    			<br>
    		
    	  
   <input type="submit" value="전송" onclick="return check()">
  </form>
 </body>
</html>