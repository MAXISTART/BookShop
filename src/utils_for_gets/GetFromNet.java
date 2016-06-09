package utils_for_gets;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class GetFromNet {
	public String getImagesByISBN(String ISBN){
		String src = "";
		Document document ;
		try{			
			document = Jsoup.connect("http://www.abebooks.com/servlet/SearchResults?sts=t&isbn="+ISBN).get();
			//System.out.println("http://www.abebooks.com/servlet/SearchResults?sts=t&isbn="+ISBN);
			Elements imgs = document.select("img[onload]");
			src = imgs.first().attr("src");
		}catch(Exception e){
//			throw new RuntimeException("���޴��飬��ȷ�������isbn�Ƿ���ȷ");
//			e.printStackTrace();
//��Ϊ���������д��ϵͳ�Լ����õġ����Բ����ܳ���ʾ�쳣��ֱ���� img��src�����ÿգ��������
			src = "";
		}
		
		return src;		
	}
	
	public String getBookName(String ISBN){
		String src = "";
		Document document ;
		try{			
			document = Jsoup.connect("http://www.abebooks.com/servlet/SearchResults?sts=t&isbn="+ISBN).get();
			//System.out.println("http://www.abebooks.com/servlet/SearchResults?sts=t&isbn="+ISBN);
			Elements as = document.select("a[itemprop]");
			src = as.first().getElementsByTag("span").first().text();
		}catch(Exception e){
//			throw new RuntimeException("���޴��飬��ȷ�������isbn�Ƿ���ȷ");
			e.printStackTrace();
//��Ϊ���������д��ϵͳ�Լ����õġ����Բ����ܳ���ʾ�쳣��ֱ���� img��src�����ÿգ��������
//			src = "";
		}
		
		return src;		
	}
	
}
