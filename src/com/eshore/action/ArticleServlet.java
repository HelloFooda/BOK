package com.eshore.action;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import com.eshore.pojo.AdminArticle;
import com.eshore.pojo.Category;
import com.eshore.service.ArticleListService;
import com.eshore.service.CategoryService;

@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public ArticleServlet() {
        super();

    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//接收参数
		String action= request.getParameter("action");
		if ("alllist".equals(action)) {
			alllist(request,response);
		}else if ("del".equals(action)) {
			del(request,response);
		}else if("add".equals(action)){
			add(request,response);
		}else if ("button".equals(action)) {
			button(request,response);
		}else if ("editui".equals(action)) {
			editui(request,response);
		}else if ("edit".equals(action)) {
			edit(request,response);
		}		
    }
    
    protected void alllist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用服务层
		ArticleListService articleListService = new ArticleListService();
		try {
			//获取返回的集合
			List<AdminArticle> allarticle = articleListService.getAllArticle();
			//反转集合，使列表倒序
			Collections.reverse(allarticle);
			//把获取的值放到request域当中
			request.setAttribute("allarticle", allarticle);
			//转发
			request.getRequestDispatcher("/Admin/AdminArticle.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
	protected void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//接收参数
		String arid = request.getParameter("arid");
	//调用服务层，让服务层删除商品
		ArticleListService articleListService =	new ArticleListService();
		try {
			articleListService.deleteArticle(arid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("ArticleServlet?action=alllist");
	}
	
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//取出所有分类
		CategoryService categoryService = new CategoryService();
		try {
			List<Category> allCategory = categoryService.findCategory();
			//将分类存入域当中
			request.setAttribute("allCategory", allCategory);
			//转发回JSP界面
			request.getRequestDispatcher("Admin/AddArticle.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void button(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取所有参数
		Map<String, String[]> parameterMap = request.getParameterMap();
		//Bean将Data对象处理成String方法
		ConvertUtils.register(new DateLocaleConverter(), Date.class);
		//封装对象
		AdminArticle adminArticle = new AdminArticle();
		try {
			BeanUtils.populate(adminArticle, parameterMap);
			adminArticle.setArbackground("1.jpg");	
			//调用服务层
			ArticleListService articleListService = new ArticleListService();
			articleListService.addArticle(adminArticle);
			response.sendRedirect("ArticleServlet?action=alllist");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void editui(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接收参数
		String arid = request.getParameter("arid");
		try {
		//获取当前商品信息
			ArticleListService articleListService = new ArticleListService();	
			AdminArticle adminArticle = articleListService.getArticleWith(arid);
		//将获取的信息写到域当中
			request.setAttribute("adminArticle", adminArticle);
		//获取所有分类
		CategoryService categoryService = new CategoryService();
			List<Category> allCategory = categoryService.findCategory();
		//将获取的分类信息写到域当中
			request.setAttribute("allCategory", allCategory);
		//将放入域当中的信息装发到页面上
			request.getRequestDispatcher("Admin/EditArticle.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取所有参数
		Map<String, String[]> parameterMap = request.getParameterMap();
		AdminArticle adminArticle = new AdminArticle();
		//封装成Article对象
		try {
			BeanUtils.populate(adminArticle, parameterMap);
			adminArticle.setArbackground("1.jpg");	
			//根据ID更新数据
			System.out.println(adminArticle);
			//调用服务层
			ArticleListService articleListService = new ArticleListService();
			//更新数据
			articleListService.updateArticle(adminArticle);
			//更新完成后跳转回首页
			response.sendRedirect("ArticleServlet?action=alllist");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

