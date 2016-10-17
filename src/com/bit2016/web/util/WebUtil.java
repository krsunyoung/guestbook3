package com.bit2016.web.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebUtil {
	public static void forward
	(HttpServletRequest request, HttpServletResponse response,
			String path) throws ServletException, IOException{
		
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response); //Attribute(list)가 request 로 온다. 그안에 저장시킴. 
	
	}
	public static void redirect
	(HttpServletRequest request, HttpServletResponse response,
			String url) throws ServletException, IOException {
		response.sendRedirect(url);
		
	}
}
