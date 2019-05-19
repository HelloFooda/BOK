package com.eshore.service;

import java.util.List;

import com.eshore.dao.CategoryDao;
import com.eshore.pojo.Category;

public class CategoryService {
	
	CategoryDao categoryDao = new CategoryDao();

	//获取所有分类信息
	public List<Category> findCategory() throws Exception {
		//从数据库中查找
		List<Category> allCategory = categoryDao.getAllCategory();
		return allCategory;
	}

}
