package com.kh.employee.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.kh.employee.model.vo.Employee;
import com.kh.template.JDBCTemplate;

public class EmployeeDao {
	private Properties prop = new Properties();
	
	// 생성자에 작성했기 때문에 Dao가 생성될 때마다 파일을 읽어올 수 있을 것
	public EmployeeDao() {
		try {
			// employee-mapper.xml 파일 경로
			String filepath = EmployeeDao.class
					.getResource("/sql/employee-mapper.xml")
					.getPath();
			prop.loadFromXML(new FileInputStream(filepath));
		} catch (InvalidPropertiesFormatException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
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
			
			rset = stmt.executeQuery(prop.getProperty("selectEmployeeList"));
			
			while(rset.next()) {
				// * Employee 객체에 조회 결과 담기
				Employee e = new Employee(rset.getInt("emp_id"), rset.getString(2),
											rset.getString("DEPT_TITLE"), rset.getString(4),
											rset.getString("hire_date"));
				// * ArrayList에 담아둔 데이터 추가
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
