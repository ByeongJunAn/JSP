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
				eVO.setEnter(rs.getString("enter"));
				eVO.setGender(rs.getString("gender"));
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
			pstmt.setString(5, eVO.getEnter());
			pstmt.setString(6, eVO.getGender());
			pstmt.setInt(7, eVO.getPhone());
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	//게시글 상세보기
		public EmployeesVO selectOneEmployeesByID(String num) {
			EmployeesVO bVO= null;
			String sql = "select * from board where num = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				rs= pstmt.executeQuery();
				
				while(rs.next()) {
					bVO = new EmployeesVO();
					bVO.setId(rs.getString("Id"));
					bVO.setPass(rs.getString("pass"));
					bVO.setName(rs.getString("name"));
					bVO.setLev(rs.getString("lev"));
					bVO.setEnter(rs.getString("enter"));
					bVO.setGender(rs.getString("gender"));
					bVO.setPhone(rs.getInt("phone"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			
			return bVO;
		}
	
		
		//게시글 수정
		public void updateemployees(EmployeesVO bVO) {
			String sql = "update board set pass=?, name=?, lev=?, enter=?, gender=?, phone=? where id=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bVO.getPass());
				pstmt.setString(2, bVO.getName());
				pstmt.setString(3, bVO.getLev());
				pstmt.setString(4, bVO.getEnter());
				pstmt.setString(5, bVO.getGender());
				pstmt.setInt(6, bVO.getPhone());
				pstmt.setString(7, bVO.getId());
		
				pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
			
		}
		
						
		public void deleteemployees(String id) {
			String sql = "delete from employees where id=?";
			Connection conn = null;
			PreparedStatement pstmt= null;
			
			try {
				conn= DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
		
	}

		

	
