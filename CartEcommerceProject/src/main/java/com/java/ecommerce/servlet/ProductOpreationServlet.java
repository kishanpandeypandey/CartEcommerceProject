package com.java.ecommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.java.ecommerce.dao.CategoryDao;
import com.java.ecommerce.dao.ProductDao;
import com.java.ecommerce.entitys.Category;
import com.java.ecommerce.entitys.Product;
import com.java.ecommerce.helper.FactoryProvider;

@MultipartConfig
public class ProductOpreationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ProductOpreationServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String op = request.getParameter("operation");
		if(op.trim().equals("add category")) {
			String title = request.getParameter("ctitle");
			String description = request.getParameter("cdiscription");
			
			Category category = new Category();
			category.setCategoryTittle(title);
			category.setCategoryDiscription(description);
			
			CategoryDao categoryDao = new CategoryDao(FactoryProvider.getFactory());
			int catId =categoryDao.saveCategory(category);

			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Category saved :" +catId);
			response.sendRedirect("admin.jsp");
			return;
			
		}else if (op.trim().equals("add product")) {
			
			String pName = request.getParameter("pName");
			String pDiscription = request.getParameter("pDiscription");
			int pPrice = Integer.parseInt(request.getParameter("pPrice"));
			int pDiscount = Integer.parseInt(request.getParameter("pDiscount"));
			int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
			int CatId = Integer.parseInt(request.getParameter("CatId"));
			Part part = request.getPart("pPic");

			Product p = new Product();
			p.setpName(pName);
			p.setpDesc(pDiscription);
			p.setpPrice(pPrice);
			p.setpDiscount(pDiscount);
			p.setpQuantity(pQuantity);
			p.setpPhoto(part.getSubmittedFileName());
			
			CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
			Category category = cDao.getCategoryById(CatId);
			p.setCategory(category);
			
			ProductDao pDao = new ProductDao(FactoryProvider.getFactory());
			pDao.saveProduct(p);
			out.println("product saved");
		
		}
	}

}
