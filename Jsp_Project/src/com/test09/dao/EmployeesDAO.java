package com.test09.dao;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EmployeesDAO {
	private static EmployeesDAO instance = new EmployeesDAO(); 
	
	private EmployeesDAO() {
	}
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	public static Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
}
