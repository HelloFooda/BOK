<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/pageStyle.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/amazeui.min.css">

<title>文章管理</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/ArticleServlet?action=add"><button>添加文章</button></a>
	<c:forEach items="${allarticle }" var="article" varStatus="status">
	<table class="table table-striped" >
		<tbody>
			<tr>
			<!--序号 -->
			<td>${status.index+1}</td>
			<td><img src="${pageContext.request.contextPath}/images/${article.arbackground}"></td>
			<td>${article.arsort}</td>
			<td>${article.artitle}</td>
			<td>${article.arcontent}</td>
			<td>${article.artime}</td>
			<td><a href="${pageContext.request.contextPath}/ArticleServlet?action=editui&arid=${article.arid}"><img class="img_icon" src="${pageContext.request.contextPath}/images/edit_icon.png"></a></td>
			<td><a href="${pageContext.request.contextPath}/ArticleServlet?action=del&arid=${article.arid}"><img class="img_icon" src="${pageContext.request.contextPath}/images/delete_icon.png"></a></td>
			</tr>
		</tbody>
	</table> 
	</c:forEach>
</body>
</html>	