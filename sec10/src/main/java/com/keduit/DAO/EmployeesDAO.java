package com.keduit.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
		
	public List<EmployeesVO> selectAllEmployees(){
		String sql = "select * from employees order by id desc";
		List<EmployeesVO> list = new ArrayList<EmployeesVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		EmployeesVO eVO = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				eVO = new EmployeesVO();
				
				eVO.setId(rs.getString("id"));
				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setLev(rs.getString("lev"));
				eVO.setEnter(rs.getTimestamp("enter"));
				eVO.setGender(rs.getBoolean("gender"));
				eVO.setPhone(rs.getInt("phone"));
				list.add(eVO);
				
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
		
		
	}
	
	public void insertEmployees(EmployeesVO eVO) {
		String sql = "insert into borad (" + "id, pass, name, lev, enter, gender, phone)" +
											"values(?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, eVO.getId());
			pstmt.setString(2, eVO.getPass());
			pstmt.setString(3, eVO.getName());
			pstmt.setString(4, eVO.getLev());
			pstmt.setTimestamp(5, eVO.getEnter());
			pstmt.setBoolean(6, eVO.getGender());
			pstmt.setInt(7, eVO.getPhone());
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	}
	
