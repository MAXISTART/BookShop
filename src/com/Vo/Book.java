package com.Vo;

public class Book {
	private int bookId;
	private String bookName;
	private String bookImage;
	private String bookAuthor;
	private String bookDiscription;
	
	public Book(){
		
	}
	
	
	
	public Book(String bookName) {
		super();
		this.bookName = bookName;
	}



	public Book(String bookName, String bookImage, String bookAuthor,
			String bookDiscription) {
		super();
		this.bookName = bookName;
		this.bookImage = bookImage;
		this.bookAuthor = bookAuthor;
		this.bookDiscription = bookDiscription;
	}
	
	
	
	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookImage() {
		return bookImage;
	}
	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookDiscription() {
		return bookDiscription;
	}
	public void setBookDiscription(String bookDiscription) {
		this.bookDiscription = bookDiscription;
	}
	
	
}
