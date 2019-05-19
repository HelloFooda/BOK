package com.eshore.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eshore.pojo.AdminUser;
import com.eshore.service.AdminService;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接收用户名密码
		String name = request.getParameter("aname");
		String passwd = request.getParameter("password");
		System.out.println(name + passwd);
		//调用 登录业务
		AdminService adminService = new AdminService();
		try {
			AdminUser adminUser = adminService.login(name,passwd);
			//1.把用户保存到session
			HttpSession session = request.getSession();
			session.setAttribute("adminUser", adminUser);
			//2.跳转到后台首页
			//重定向，让浏览器去跳转到指定的位置
			response.sendRedirect(request.getContextPath()+"/Admin/AdminIndex.jsp");
		} catch (Exception e) {
			
			if(e.getMessage().equals("用户名或密码错误")) {
				//跳转回登录页，回显错误信息 
				request.setAttribute("err", e.getMessage());
				//转发,服务器内部的转发
				request.getRequestDispatcher("/Admin/AdminLogin.jsp").forward(request, response);
			}else {
				e.printStackTrace();
			}
		}
	}

}
