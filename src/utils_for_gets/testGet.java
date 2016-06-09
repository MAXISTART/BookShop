package utils_for_gets;

import org.junit.Test;

public class testGet {
	GetFromNet testG = new GetFromNet();
//	@Test
//	public void te(){
//		String src = testG.getImagesByISBN("0618154035");
//		System.out.println(src);
//	}
	@Test
	public void te2(){
		String src = testG.getBookName("0618154035");
		System.out.println(src);
	}
}
