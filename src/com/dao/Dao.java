package com.dao;

import java.security.interfaces.RSAKey;
import java.sql.ResultSet;

import com.Vo.Book;
import com.Vo.User;

public class Dao {
	Utils utils = new Utils();
	User user = null;
	public String tyrString = "1";
	public Dao() {
		
	}
	//传入 书名，选择图书，并返回book对象
	public Book selectBook(String bookName){
		String sql = "SELECT * From books WHERE bookName = '"+bookName+"'";
		//System.out.println(sql);
		ResultSet rs = null;
		Book book = new Book();
		System.out.println(book.getBookName());
		try {
			rs = utils.select(sql);
		//	System.out.println(rs);
			if(rs.next()){		
				//System.out.println(rs.getString("bookName"));
				book.setBookName(rs.getString("bookName"));
				book.setBookAuthor(rs.getString("bookAuthor"));
				book.setBookImage(rs.getString("bookImage"));
				book.setBookDiscription(rs.getString("bookDescription"));
				book.setBookId(rs.getInt("bookId"));
			}
//			if(rs.next()){
//				System.out.println(rs.getString("bookName"));
//			}
		} catch (Exception e) {
			throw new RuntimeException("查无此书");			
		}
		try {
			utils.closeIo1();
		} catch (Exception e) {
			
			throw new RuntimeException("数据关闭不了");		
		}

		return book;
	}
	//传入一个 book的对象，插入这本书到数据库中
	public void addBook(Book book){
		
		String sql = "INSERT INTO books (bookName,bookImage,bookAuthor,bookDescription)VALUES('"+book.getBookName()+"','"+book.getBookImage()+"','"+book.getBookAuthor()+"','"+book.getBookDiscription()+"')";
		try {
			utils.insert(sql);
		} catch (Exception e) {
			throw new RuntimeException("插入不了数据");		
		}
	}
	//传入要更新的 书的书名，还有要用来更新的书
	public void updateBook(String bookName_toReplace,Book book){

		String sql = "UPDATE books SET bookName = '"+book.getBookName()+"',bookImage='"+book.getBookImage()+"',bookAuthor='"+book.getBookAuthor()+"',bookDescription='"+book.getBookDiscription()+"' WHERE bookName = '"+bookName_toReplace+"'";
		try{
			utils.update(sql);
		}catch(Exception e){
			throw new RuntimeException("找不到要更新的书");	
		}
	}
	//根据书名 删除图书
	public void deleteBook(String bookName){
		String sql = "DELETE FROM books WHERE bookName = '"+bookName+"'";
		try {
			utils.delete(sql);
		} catch (Exception e) {
			throw new RuntimeException("找不到要更新的书");	
		}
	}
	
	public User selectUser(String userName){
		return null;
	}
	
	public void addUser(String userName){
		
	}
	
	public void updateUser(String userName){
		
	}
	
	public void deleteUser(String userName){
		
	}
}
