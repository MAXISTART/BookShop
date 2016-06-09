package com.Bo;

import java.io.IOException;
import java.util.ArrayList;

import javax.xml.crypto.Data;

import utils_for_gets.GetFromNet;

import com.Vo.Book;
import com.dao.Dao;
import com.recommender.Recommender;

public class IndexBo {
	public Recommender recommender;
	public ArrayList<String> recommendData = null;
	public GetFromNet gets = new GetFromNet();
	
	public boolean setrecommendData(String userName) throws IOException{
		recommender = new Recommender();
		recommendData = recommender.doRecommend(userName);	
		if(recommendData==null){
			//用户不存在的时候或者没有找到相似用户时就反馈回这个
			return false;
		}else{
			System.out.println("do recommend的userName为"+userName);
			return true;
		}		
	}
	
	public String getClickUrlByIndex(int index){
	
		String bookISBN;
		try {
			bookISBN = recommendData.get(index);
		} catch (IndexOutOfBoundsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//防止 数组 下标越界
			bookISBN = "";
		}
		String clickString = "http://www.abebooks.com/servlet/SearchResults?sts=t&isbn="+bookISBN;
		return clickString;
	}
	
	public String getImageUrlByIndex(int index){
		String bookISBN;
		try {
			bookISBN = recommendData.get(index);
		} catch (IndexOutOfBoundsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//防止 数组 下标越界
			bookISBN = "";
		}
		String bookImage = gets.getImagesByISBN(bookISBN);
		return bookImage;
	}
	
	public String getBookNameUrlByIndex(int index){
		String bookISBN;
		try {
			bookISBN = recommendData.get(index);
		} catch (IndexOutOfBoundsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//防止 数组 下标越界
			bookISBN = "";
		}
		String bookImage = gets.getBookName(bookISBN);
		return bookImage;
	}
	
}
