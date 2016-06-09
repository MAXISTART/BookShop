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
	//���� ������ѡ��ͼ�飬������book����
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
			throw new RuntimeException("���޴���");			
		}
		try {
			utils.closeIo1();
		} catch (Exception e) {
			
			throw new RuntimeException("���ݹرղ���");		
		}

		return book;
	}
	//����һ�� book�Ķ��󣬲����Ȿ�鵽���ݿ���
	public void addBook(Book book){
		
		String sql = "INSERT INTO books (bookName,bookImage,bookAuthor,bookDescription)VALUES('"+book.getBookName()+"','"+book.getBookImage()+"','"+book.getBookAuthor()+"','"+book.getBookDiscription()+"')";
		try {
			utils.insert(sql);
		} catch (Exception e) {
			throw new RuntimeException("���벻������");		
		}
	}
	//����Ҫ���µ� �������������Ҫ�������µ���
	public void updateBook(String bookName_toReplace,Book book){

		String sql = "UPDATE books SET bookName = '"+book.getBookName()+"',bookImage='"+book.getBookImage()+"',bookAuthor='"+book.getBookAuthor()+"',bookDescription='"+book.getBookDiscription()+"' WHERE bookName = '"+bookName_toReplace+"'";
		try{
			utils.update(sql);
		}catch(Exception e){
			throw new RuntimeException("�Ҳ���Ҫ���µ���");	
		}
	}
	//�������� ɾ��ͼ��
	public void deleteBook(String bookName){
		String sql = "DELETE FROM books WHERE bookName = '"+bookName+"'";
		try {
			utils.delete(sql);
		} catch (Exception e) {
			throw new RuntimeException("�Ҳ���Ҫ���µ���");	
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
