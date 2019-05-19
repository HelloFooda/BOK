<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--引入首页CSS -->
    <link rel="stylesheet" type="text/css" href="CSS/index.css">
<title>导航分页</title>
</head>
<body style=" background-size: auto;"background="images/2.png">
<div class="navigation">
    <ul id="nav">
        <li><a href="#"><img src="#">LOGO</a></li>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">用户</a></li>
    </ul>
</div>
<div class="container" style="padding-top: 50px;">
	<div class="row clearfix">
		<div class="col-md-3 column">
            <br>
            <div class="list-group">

                                <a href="/" class="list-group-item active">Java 文章
                                 <span class="badge">0</span>
                                </a>
                                <c:forEach items="${pageObject.data }" var="article">
                                <div class="list-group-item">
                                   <a href="#">${article.title }</a>
                                </div>
                                </c:forEach>
                                <a href="index.jsp" class="list-group-item active">返回导航列表</a>
            </div>

		</div>
        <div class="col-md-1 column">
        </div>

        <div class="col-md-8 column">
            <br>
            <br>
            <div class="jumbotron">
				<h1>
					Hello, world!
				</h1>
				<p>
					This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
        </div>
    </div>
</div>

</body>