package com.dao;

import java.security.interfaces.RSAKey;
import java.sql.ResultSet;

import org.junit.Test;

//这里表明  Utils 这个类的功能都是过关的

public class UtilsTest {
	 Utils tu = new Utils();
	 String selectSql = "SELECT bookName From books";

	 String addSql = "INSERT INTO books (bookName,bookImage,bookAuthor,bookDescription)VALUES('第二本书','第二本书的图片路径','第一个作者','这是第二本书的描述')";
	
	 String deleteSql = "DELETE FROM books WHERE bookName = '第二本书'";
	
	 String updateSql = "UPDATE books SET bookImage = '//' WHERE bookName = '第一本书'";
	
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
