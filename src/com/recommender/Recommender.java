package com.recommender;

import java.io.File;
import java.io.FileInputStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Map;
import java.util.Map.Entry;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

public class Recommender{
	
	// usr, book, score
	static Map<String, Map<String, Integer>> usrScore;
	
	// ��ȡ����
	public void readData(String filename)throws IOException{
		usrScore = new HashMap<String, Map<String, Integer>>();
		FileInputStream fin = new FileInputStream(new File(filename));
		Scanner sc = new Scanner(new BufferedInputStream(fin));
		System.out.println("�һ��ڶ�ȡ����");
		while(sc.hasNext()){
			String[] data = sc.nextLine().split(";");
			if(data.length != 3) continue;
			// data[0]���û���
			// data[1]: ����
			// data[2]: ����
			data[0] = data[0].substring(1, data[0].length()-1);
			data[1] = data[1].substring(1, data[1].length()-1);
			data[2] = data[2].substring(1, data[2].length()-1);
			
			if(!usrScore.containsKey(data[0])){
				usrScore.put(data[0], new HashMap<String, Integer>());
				usrScore.get(data[0]).put(data[1], Integer.valueOf(data[2]));
			}else{
				if(!usrScore.get(data[0]).containsKey(data[1])){
					usrScore.get(data[0]).put(data[1], Integer.valueOf(data[2]));
				}else{
					usrScore.get(Integer.valueOf(data[0])).replace(data[1], Integer.valueOf(data[2]));
				}
			}
		}
		
		System.out.println("�Ҷ�������");
	}
	
	// �����������ƶ�	
	public double getCosSim(String usr1, String usr2){
		if(!usrScore.containsKey(usr1)){
			System.out.println(usr1 + " does not exist...");
			return -1;
		}
		if(!usrScore.containsKey(usr2)){
			System.out.println(usr2 + " does not exist...");
			return -1;
		}
		Map<String, Integer> score1 = usrScore.get(usr1);
		Map<String, Integer> score2 = usrScore.get(usr2);
		
		double s1xs2 = 0;
		double s12 = 0;
		double s22 = 0;
		
		for(String bookName : score1.keySet()){
			if(score2.containsKey(bookName)){
				s1xs2 += score1.get(bookName) * score2.get(bookName);
				s12 += Math.pow(score1.get(bookName), 2);
				s22 += Math.pow(score2.get(bookName), 2);
			}	
		}
		
		s1xs2 = Math.abs(s1xs2);
		s12 = Math.sqrt(s12);
		s22 = Math.sqrt(s22);
		
		if(s12==0.0 || s22==0.0)
			return -1;
		else
			return s1xs2 / (s12 * s22);
	}
	
	// ��ȡ���û����ƶ�����û�
	public String getTopSimUsr(String usr){
		
		String simUsr = null;
		double cosSim = 0.5;
		
		for(String usrName : usrScore.keySet()){
			if(usrName.equals(usr)) continue;
			
			if(getCosSim(usr, usrName) > cosSim){
				cosSim = getCosSim(usr, usrName);
				simUsr = usrName;
			}
		}
		
		return simUsr;
	}
		
	// ���������û��Ƽ�
	public Set<String> getRecommend(String usr){
		
		int scoreThreshold = 5;
		
		Set<String> recommendResult = new HashSet<String>();
		
		String simUsr = getTopSimUsr(usr);
		// û���ҵ������û�
		if(simUsr == null) return null;
		
		Map<String, Integer> score = usrScore.get(simUsr);
		Map<String, Integer> scoreUsr = usrScore.get(usr);
		for(String bookName : score.keySet()){
			if(score.get(bookName) > scoreThreshold){
				if(!scoreUsr.containsKey(bookName)){
					recommendResult.add(bookName);
				}
			}
		}
		
		return recommendResult;
	}
	
	
	public ArrayList<String> doRecommend(String usr) throws IOException{
		
//		Scanner sc = new Scanner(new BufferedInputStream(System.in));
		
		Recommender Recommender = new Recommender();
		
//		System.out.println("*****��ӭ����Эͬ�����Ƽ�ϵͳ*****");
//		System.out.println("\t��ʼ��������");
//		System.out.println("\t����������...");
		//E:\\MyEclipse Project\\BookShop\\src\\com\\recommender\\data\\BX-Book-Ratings.csv
		if(usrScore==null){
			Recommender.readData("E:\\MyEclipse Project\\BookShop\\src\\com\\recommender\\data\\BX-Book-Ratings.csv");
		}
		
//		
//		System.out.println("\t�����������");
//		
//		System.out.print("\t����������û���:");
		
//		System.out.println("\t���������Ƶ��û���:"+Recommender.getTopSimUsr(usr));
//		System.out.println("\t�����Ƽ�������:");
//		System.out.print("\t");
		ArrayList<String> bookList = new ArrayList<String>();
		for(String bookName : Recommender.getRecommend(usr)){
			//System.out.print(bookName + ";");
			bookList.add(bookName);
		}
		return bookList;
//		System.out.println("\n\t�Ƽ�����,Bye~");
	}
}