package com.dao;

import java.security.interfaces.RSAKey;
import java.sql.ResultSet;

import org.junit.Test;

//�������  Utils �����Ĺ��ܶ��ǹ��ص�

public class UtilsTest {
	 Utils tu = new Utils();
	 String selectSql = "SELECT bookName From books";

	 String addSql = "INSERT INTO books (bookName,bookImage,bookAuthor,bookDescription)VALUES('�ڶ�����','�ڶ������ͼƬ·��','��һ������','���ǵڶ����������')";
	
	 String deleteSql = "DELETE FROM books WHERE bookName = '�ڶ�����'";
	
	 String updateSql = "UPDATE books SET bookImage = '//' WHERE bookName = '��һ����'";
	
	public  ResultSet rs = null;
	
	@Test
	public void TestSelect() throws Exception{
		rs = tu.select(selectSql);
		if(rs.next()){
			System.out.println(rs.getString("bookName"));
		}
		tu.closeIo1();
		
	}
//	
//	@Test
//	public void TestAdd() throws Exception{
//		tu.insert(addSql);
//	}
//
//	@Test
//	public void testDelete() throws Exception{
//		tu.delete(deleteSql);
//	}
	
//	@Test
//	public void testUpdate() throws Exception{
//		tu.update(updateSql);
//	}
}
