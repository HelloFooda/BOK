package com.eshore.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.eshore.db.JdbcUtils;
import com.eshore.pojo.AdminUser;

public class AdminDao{
	public  AdminUser checkAdmin(String name, String passwd) throws Exception {
		//连接
		QueryRunner queryRunner = new QueryRunner(JdbcUtils.getDataSource());
		//从数据库中查询并且返回结果
		String sql = "select * from admin where aname=? and password=?";
		//执行查询
		AdminUser adminUser = null;
		adminUser = queryRunner.query(sql, new BeanHandler<AdminUser>(AdminUser.class),name,passwd);
		//返回结果
		return adminUser;
	}
}