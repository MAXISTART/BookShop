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
//			throw new RuntimeException("查无此书，请确认输入的isbn是否正确");
//			e.printStackTrace();
//因为这个方法是写给系统自己调用的。所以不用跑出提示异常，直接让 img的src属性置空，即空语句
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
//			throw new RuntimeException("查无此书，请确认输入的isbn是否正确");
			e.printStackTrace();
//因为这个方法是写给系统自己调用的。所以不用跑出提示异常，直接让 img的src属性置空，即空语句
//			src = "";
		}
		
		return src;		
	}
	
}
