package com.eshore.test;

import java.util.List;

import org.junit.Test;

import com.eshore.dao.ArticleDao;
import com.eshore.pojo.AdminArticle;

public class ArticleDaoTest {
	
	ArticleDao articleDao = new ArticleDao();
	
	@Test
	public void AllArticle() throws Exception {
		List<AdminArticle> allarticle = articleDao.getAllArticle();
		System.out.println(allarticle);
	}
	
	@Test
	public void addArticle() throws Exception {
		AdminArticle adminArticle = new AdminArticle();
		adminArticle.setArsort("Java框架");
		adminArticle.setArtitle("测试标题2");
		adminArticle.setArcontent("测试内容2");
		adminArticle.setArbackground("e/2.png");
		articleDao.addArticle(adminArticle);
	}
	
	@Test
	public void deleteArticle() throws Exception {
		articleDao.deleteArticle(4);
	}
	
	@Test
	public void updateArticle() throws Exception {
		AdminArticle adminArticle = new AdminArticle();
		adminArticle.setArid(1);
		adminArticle.setArsort("Java框架");
		adminArticle.setArtitle("修改测试标题2");
		adminArticle.setArcontent("修改测试内容2");
		adminArticle.setArbackground("e/3.png");
		articleDao.updateArticle(adminArticle);
	}
}
