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
<title>修改文章</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ArticleServlet?action=edit" id="edit_form" method="post" >
<input type="text" name="arid" value="${adminArticle.arid }" style="display:none">
<div>
	文章标题：<input type="text" name="artitle" value="${adminArticle.artitle }"><br>
	文章内容:<textarea name="arcontent" rows="4" cols="50">${adminArticle.arcontent }</textarea><br>
	背景图片:<input type="file" name="arbackground"><br>
	<span>分类选择：</span>
	<select id="category_select" name="arsort">
		<c:forEach items="${allCategory }" var="category">
		<option value="${category.arsort }">${category.arsort }</option>
		</c:forEach>
	</select>
</div>
<button type="button" id="edit">更新</button>
<button type="button" id="reset">重置</button>
</form>
<script>
//监听按钮响应
	$(function(){
	
		$("#edit").click(function(){
			//让表单提交ArticleEditServlet,获取表单
			$("#edit_form").submit();
		});
		
		$("#reset").click(function(){
			$(window).attr('location','Admin/EditArticle.jsp');		
		});
		
		$("#category_select option[value=${category.arsort }]").prop("selected",true);
	
	});
</script>



</body>
</html>
