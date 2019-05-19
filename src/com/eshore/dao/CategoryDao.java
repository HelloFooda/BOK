package com.eshore.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.eshore.db.JdbcUtils;
import com.eshore.pojo.Category;

public class CategoryDao {
	
	//连接
			QueryRunner queryRunner = new QueryRunner(JdbcUtils.getDataSource());
			
	//获取所有分类信息
	public List<Category> getAllCategory() throws Exception {
		
		List<Category> allCategory = null;
		allCategory = queryRunner.query("select * from articlesort",new BeanListHandler<Category>(Category.class));
		return allCategory;
	}
}
