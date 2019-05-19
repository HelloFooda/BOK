package com.eshore.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.eshore.db.JdbcUtils;
import com.eshore.pojo.AdminArticle;

public class ArticleDao {
	
	//连接
		QueryRunner queryRunner = new QueryRunner(JdbcUtils.getDataSource());
		
	//从数据库中查询所有文章
	public List<AdminArticle> getAllArticle() throws Exception{
		//sql语句
		String sql = "select * from article";
		//参数存储
		List<AdminArticle> allarticle = null;
		allarticle = queryRunner.query(sql, new BeanListHandler<AdminArticle>(AdminArticle.class));
		//返回结果
		return allarticle;
	}
	
	//添加文章
	public void addArticle (AdminArticle adminArticle) throws Exception{
		String sql = "insert into article(arsort,artitle,arcontent,arbackground) value(?,?,?,?)";
		queryRunner.update(sql,adminArticle.getArsort(),adminArticle.getArtitle(),adminArticle.getArcontent(),adminArticle.getArbackground());
	}
	
	//根据ID删除商品
	public void deleteArticle(int id) throws Exception{
		String sql = "delete from article where arid=?";
		queryRunner.update(sql,id);
	}
	
	//根据ID更新商品
	public void updateArticle(AdminArticle adminArticle) throws Exception{
		String sql = "update article set arsort=?,artitle=?,arcontent=?,arbackground=? where arid=?";
		queryRunner.update(sql,adminArticle.getArsort(),adminArticle.getArtitle(),adminArticle.getArcontent(),adminArticle.getArbackground(),adminArticle.getArid());

	}
	
	//根据ID查询商品
	public AdminArticle getArticleWith(String arid) throws Exception {
		String sql = "select * from article where arid=?";
		AdminArticle adminArticle = queryRunner.query(sql, new BeanHandler<AdminArticle>(AdminArticle.class),Integer.parseInt(arid));
		return adminArticle;
	}
}
