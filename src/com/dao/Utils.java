package com.dao;


import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class Utils {
	
	private Connection conn1 = null;
	private Statement stmt1 = null;	
	private ResultSet rs1 = null;
	
	public Utils(){
		
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;		
		Class.forName("com.mysql.jdbc.Driver").newInstance();		
		String url = "jdbc:mysql://localhost:3306/bookshop";
		String user = "root";
		String password = "root";
		conn = DriverManager.getConnection(url, user, password);
		return conn;		
	}
	
	public ResultSet select(String sql) throws Exception{

		try{
			conn1 = getConnection();
			stmt1 = conn1.createStatement();
			rs1 = stmt1.executeQuery(sql);
			return rs1;			
		}catch (SQLException sqle) {
			throw new SQLException("select data exception"+sqle.getMessage());
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return rs1;
			
	}
	
	//只有用到  select 功能的时候才会用这个方法来关闭流
	public void closeIo1() throws Exception{
		
		try {
			if (rs1!=null) {
				rs1.close();
			}
			if (stmt1!=null) {
				stmt1.close();
			}
			if (conn1!=null) {
				conn1.close();
			}
		}catch(Exception e){
			throw new Exception("close select data exception"+e.getMessage());
			}
	
	} 
	
	public void insert(String sql) throws Exception{
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new SQLException("insert data exception"+sqle.getMessage());
		}catch (Exception e) {
			throw new Exception(e.getMessage());
		}finally{
			try {
				if (ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				throw new Exception("ps close exception"+e2.getMessage());
			}
			try {
				if (conn!=null) {
					conn.close();
				}
			} catch (Exception e2) {
				throw new Exception("conn close exception"+e2.getMessage());
			}
		}
	}
	
	public void update(String sql) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new SQLException("update data exception"+sqle.getMessage());
		}catch (Exception e) {
			throw new Exception(e.getMessage());
		}finally{
			try {
				if (ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				throw new Exception("ps close exception"+e2.getMessage());
			}
			try {
				if (conn!=null) {
					conn.close();
				}
			} catch (Exception e2) {
				throw new Exception("conn close exception"+e2.getMessage());
			}
		}		
	}
	
	
	public void  delete(String sql) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new SQLException("delete data exception"+sqle.getMessage());
		}catch (Exception e) {
			throw new Exception(e.getMessage());
		}finally{
			try {
				if (ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				throw new Exception("ps close exception"+e2.getMessage());
			}
			try {
				if (conn!=null) {
					conn.close();
				}
			} catch (Exception e2) {
				throw new Exception("conn close exception"+e2.getMessage());
			}
		}			
	}
	
	
}
