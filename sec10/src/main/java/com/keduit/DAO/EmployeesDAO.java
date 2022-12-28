package com.keduit.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.EmployeesVO;

import util.DBManager;

public class EmployeesDAO {
	private EmployeesDAO() {}
	private static EmployeesDAO instance = new EmployeesDAO();
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
		
	public List<EmployeesDAO> selectAllEmployeesDAO(){
		String sql = "select * from employees order by id desc";
		List<EmployeesVO> list = new ArrayList<EmployeesVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		EmployeesVO bVO = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
			}
		}
		
		return list;
		
		
	}
	
	
	}
	
