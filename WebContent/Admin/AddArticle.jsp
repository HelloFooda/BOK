<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ArticleServlet?action=button" id="add_form" method="post" >
<div>
	文章标题：<input type="text" name="artitle"><br>
	文章内容:<textarea name="arcontent" rows="4" cols="50"></textarea><br>
	背景图片:<input type="file" name="arbackground"><br>
	<span>分类选择：</span>
	<select id="category_select" name="arsort">
		<c:forEach items="${allCategory }" var="category">
		<option value="${category.arsort }">${category.arsort }</option>
		</c:forEach>
	</select>
</div>
<button type="button" id="add">提交</button>
<button type="button" id="reset">重置</button>
</form>
<script>
//监听按钮响应
	$("#add").click(function(){
		//让表单提交ArticleButtonServlet,获取表单
		$("#add_form").submit();
	});
	$("#reset").click(function(){
		$(window).attr('location','AddArticle.jsp');		
	});
</script>



</body>
</html>