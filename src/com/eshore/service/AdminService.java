package com.eshore.service;

import com.eshore.dao.AdminDao;
import com.eshore.pojo.AdminUser;

public class AdminService {

	public AdminUser login(String name, String passwd) throws Exception {
	//调用Dao层实现数据库查询
		AdminDao adminDao = new AdminDao();
	//传递用户名密码从数据库中查询是否有值
		 AdminUser adminUser = adminDao.checkAdmin(name,passwd);
		 if (adminUser!=null) {
			return adminUser;
		}else {
			throw new Exception("用户名或密码错误");
		}
	}

}
