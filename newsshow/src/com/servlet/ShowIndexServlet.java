package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.NewsDao;
import com.pojo.News;

/**
 * Servlet implementation class ShowIndexServlet
 * 页面展示servlet
 */
public class ShowIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowIndexServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置请求字符集,以便从请求读取中文
		request.setCharacterEncoding("utf-8");
		// 设置响应字符集,以输出中文到浏览器正常显示
		response.setContentType("text/html;charset=utf-8");
		
		List<News> list=new NewsDao().getAll();
		
		if(list.size()>=2)
		{
			request.setAttribute("first", list.get(0));
			request.setAttribute("second", list.get(1));
		}
		
		int len=(list.size()-2)/2;
		
		int sub=(list.size()-2)%2;
		
		if(sub==0){
			request.setAttribute("listleft", list.subList(2, len+2));
			request.setAttribute("listright", list.subList(len+2, list.size()));
		}else{
			request.setAttribute("listleft", list.subList(2, len+3));
			request.setAttribute("listright", list.subList(len+3, list.size()));
		}
		
		request.setAttribute("highsize", len*78);       
		   
		

		
		request.getRequestDispatcher("show.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
