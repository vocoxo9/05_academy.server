package com.kh.employee.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.kh.employee.model.vo.Employee;
import com.kh.template.JDBCTemplate;

public class EmployeeDao {

	/*
	 *  Statement 객체 생성 (=> Connection 객체 사용)
	 *  쿼리문(SQL문) 실행 후 결과 받기
	 *  결과에 대한 처리
	 * - DQL : ResultSet 객체로 결과를 받아서 필요한 데이터를 차곡차곡 저장
	 * - DML : int 타입으로 결과를 받아서 리턴(=> 트랜잭션 처리는 서비스에서 담당)
	 * 
	 * 	객체 반납(close) => Statement, ResultSet
	 */
	public ArrayList<Employee> selectEmployeeList(Connection conn) {
		ArrayList<Employee> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rset = null;
		
		try {
			stmt = conn.createStatement();
			
			String query = "SELECT * FROM EMPLOYEE";
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Employee e = new Employee());
				list.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		
		return list;
	}

}
