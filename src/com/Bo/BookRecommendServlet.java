package com.Bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class BookRecommendServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */


	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		System.out.println(userName);
		IndexBo indexBo = new IndexBo();
		HttpSession session = request.getSession();
		if (indexBo.setrecommendData(userName)) {			
			session.setAttribute("loginResult", 1);
			System.out.println("servlet的loginResult"+session.getAttribute("loginResult"));
			session.setAttribute("indexBo", indexBo);
			int ifUserError = 0;
			session.setAttribute("ifUserError", 0);
			response.sendRedirect("/BookShop/Recommend.jsp");
			//下面是测试打印出推荐的图书的链接
			String a = indexBo.getClickUrlByIndex(0);
			String b = indexBo.getImageUrlByIndex(0);
			System.out.println(a + "      " + b);
		}else{
			int ifUserError = 1;
			session.setAttribute("ifUserError", ifUserError);
			session.setAttribute("loginResult", 0);
		}
		
	}

}
