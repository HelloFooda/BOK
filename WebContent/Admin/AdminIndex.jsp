<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员首页</title>
</head>
<body style="background:#C7EDCC">
	${adminUser.aname}
	<a href="${pageContext.request.contextPath}/ArticleServlet?action=alllist">文章管理</a>
</body>
</html>