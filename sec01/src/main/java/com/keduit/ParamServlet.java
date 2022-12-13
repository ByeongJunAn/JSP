package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String jumin = request.getParameter("jumin_1")
			+ "-" + request.getParameter("jumin_2");
		String id = request.getParameter("id");
	    int age = Integer.parseInt(request.getParameter("age"));
	    int password = Integer.parseInt(request.getParameter("password"));
	    String mail = request.getParameter("mail");
	    String m_number= request.getParameter("m_number_1")
	    	+ "-" + request.getParameter("m_number_2");
	    String addr = request.getParameter("addr");
	    String phone = request.getParameter("phone");
	    String job = request.getParameter("job");
	    String att = request.getParameter("att");
	    
	    
	    PrintWriter out = response.getWriter();
	    out.println("<html><head><body>");
	    out.println("당신이 입력한 자료입니다.<br>");
	    out.print("이름 : ");
	    out.println(name);
	    out.println("<br> 주민번호 : ");
	    out.print(jumin);
	    out.print("<br> 아이디 : ");
	    out.println(id);
	    out.print("<br> 비밀번호 : ");
	    out.println(password); 
	    out.print("<br> 메일 : ");
	    out.println(mail);
	    out.print("<br> 우편번호 : ");
	    out.println(m_number);
	    out.print("<br>나이 : ");
	    out.println(age);
	    out.print("<br> 주소 : ");
	    out.println(addr);
	    out.print("<br>핸드폰 번호 : ");
	    out.println(phone);
	    out.print("<br> 직업 : ");
	    out.println(job);
	   
	    out.print("<br> 관심분야 : ");
	    out.println(att);
	    
	    
	    out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
	    out.println("</body></head></html>");
	    
	    
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		doGet(request, response);
	}
	
    
}


