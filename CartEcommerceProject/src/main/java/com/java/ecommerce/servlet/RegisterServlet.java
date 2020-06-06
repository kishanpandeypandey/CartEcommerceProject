package com.java.ecommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.java.ecommerce.entitys.User;
import com.java.ecommerce.helper.FactoryProvider;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

	response.setContentType("text/html;charset=UTF-8");
	try {
		String userName= request.getParameter("username");
		String userEmail= request.getParameter("useremail");
		String userPassword= request.getParameter("userpassword");
		String userPhone= request.getParameter("userphone");
		String userAddress= request.getParameter("useraddress");
		

		if(userName.isEmpty()) {
HttpSession httpsession = request.getSession();
httpsession.setAttribute("message", "please enter username");
response.sendRedirect("register.jsp");
			return;
		}	
		
		User user = new User(userName,userEmail,userPassword,userPhone,"default.png",userAddress,"normal");
		Session hibernatesession = FactoryProvider.getFactory().openSession();
		Transaction tx = hibernatesession.beginTransaction();
		int userId = (Integer) hibernatesession.save(user);
		tx.commit();
		hibernatesession.close();
		if(userId>1) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "User saved successfully!!  User id is "+userId);
			response.sendRedirect("register.jsp");
			return;
			
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
		out.println("Data not saved");
	}
	}

}
