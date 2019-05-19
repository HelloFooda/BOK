package com.eshore.service;

import java.util.List;

import com.eshore.dao.ArticleDao;
import com.eshore.pojo.AdminArticle;

public class ArticleListService {
	
	// 从数据库中获取数据，直接调用Dao接口
	private ArticleDao articleDao = new ArticleDao();
	//有返回值就不能是void，应该是个集合
	
	public List<AdminArticle> getAllArticle() throws Exception {
		//返回一个集合对象
		List<AdminArticle> allarticle = articleDao.getAllArticle();
		//返回参数
		return allarticle;
	}

	public void deleteArticle(String arid) throws Exception {
		//(Integer.parseInt(arid)是将定义成String类型的id转换成int类型
		articleDao.deleteArticle(Integer.parseInt(arid));
	}

	public void addArticle(AdminArticle adminArticle) throws Exception {
		articleDao.addArticle(adminArticle);
	}

	public AdminArticle getArticleWith(String arid) throws Exception {
		AdminArticle adminArticle = articleDao.getArticleWith(arid);
		return adminArticle;
	}

	public void updateArticle(AdminArticle adminArticle) throws Exception {
		articleDao.updateArticle(adminArticle);
	}

}
