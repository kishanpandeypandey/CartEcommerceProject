package com.java.ecommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.ecommerce.dao.UserDao;
import com.java.ecommerce.entitys.User;
import com.java.ecommerce.helper.FactoryProvider;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public loginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
HttpSession httpSession = request.getSession();


try {
	String email=request.getParameter("email");
	String password = request.getParameter("password");
	
UserDao userdao = new UserDao(FactoryProvider.getFactory());
User user = userdao.getUserByEmailAndPassword(email, password);

if(user == null) {
httpSession.setAttribute("message", "invalid User Details");
response.sendRedirect("login.jsp");

}
else {
	httpSession.setAttribute("current-user", user);

if(user.getUserType().equals("admin")) {

	response.sendRedirect("admin.jsp");
	
}
else if(user.getUserType().equals("normal")) {
	response.sendRedirect("normal.jsp");
}
else {
	out.println("we have not identified user type");
}


}

}catch(Exception e) {
	e.printStackTrace();
}
	}

}
