package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.DAO.EmployeesDAO;
import com.keduit.dto.EmployeesVO;

public class EmployeesCheckPassAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=null;
		
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
		EmployeesDAO eDAO=EmployeesDAO.getInstance();
		EmployeesVO eVO=eDAO.selectOneEmployeesByID(id);
		
		if(eVO.getPass().equals(pass)) {
			url="/employees/checkSuccess.jsp";
			
		}else {
			url="/employees/employeesCheckPAss.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}
