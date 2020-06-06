package com.java.ecommerce.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logoutservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public logoutservlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	HttpSession httpsession = request.getSession();
	httpsession.removeAttribute("current-user");
	response.sendRedirect("login.jsp");
	}


}
