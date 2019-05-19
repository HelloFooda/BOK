<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
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
 	<title>小站首页</title>
</head>
<body style=" background-size: auto;"background="images/2.png">
<div class="navigation">
    <ul id="nav">
        <li><a href="#"><img src="#">LOGO</a></li>
        <li><a href="/">首页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">分页</a></li>
        <li><a href="#">用户</a></li>
    </ul>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column">
            <br>
            <div>
			<img alt="140x140" src="images/1.jpg" class="img-circle" />
            </div>
            <br>
            <div style="width: 300px;height: 100px;">
                            <span class="label label-success">Web</span>
                            <br>
                            <span class="label label-warning">Java</span>
                            <span class="label label-warning">Python</span>
                            <br>
                            <span class="label label-primary">Html+Css+Js</span>
                            <span class="label label-primary">Bootstrap</span>
                            <span class="label label-primary">Vue.js</span>
            </div>
            <br>
            <div class="list-group">
                           <a href="#" class="list-group-item active">导航列表</a>
                                <div class="list-group-item">
                                   <a href="http://localhost:8080/hellofood/article?action=all">Java 文章</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">Python 文章</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">IDE 文章</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">框架 文章</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">工具 文章</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">项目展示</a>
                                    <span class="badge">0</span>
                                </div>
                                <div class="list-group-item">
                                   <a href="#">工具下载链接</a>
                                    <span class="badge">0</span>
                                </div>
                                <a class="list-group-item active"> <span class="badge"></span>&nbsp;</a>
                            </div>

		</div>
        <div class="col-md-1 column">
        <!-- 中间空隙 -->
                    </div>
                    <div class="col-md-8 column">
                        <br>
                        <div id="myAlert" class="alert alert-success">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong>这里面有什么内容？</strong>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这个网站的内容是自己在学习中使用的各种软件中遇到的一些基础问题，例如如何使用某个插件，如何使用某个好用的IDE，在预览了大量的网站后总结一些傻瓜式的教程，可以使自己在忘记时回顾一下，也用来分享给大家。
                        </div>
                        <div class="carousel slide" id="carousel-411162">
                            <ol class="carousel-indicators">
                                <li class="active" data-slide-to="0" data-target="#carousel-411162">
                                </li>
                                <li data-slide-to="1" data-target="#carousel-411162">
                                </li>
                                <li data-slide-to="2" data-target="#carousel-411162">
                                </li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img alt="" src="images/2.png" />
                                    <div class="carousel-caption">
                                        <h4>
                                            First Thumbnail label
                                        </h4>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img alt="" src="images/2.png" />
                                    <div class="carousel-caption">
                                        <h4>
                                            Second Thumbnail label
                                        </h4>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img alt="" src="images/2.png" />
                                    <div class="carousel-caption">
                                        <h4>
                                            Third Thumbnail label
                                        </h4>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                    </div>
                                </div>
                            </div> <a class="left carousel-control" href="#carousel-411162" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-411162" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                        </div>
                        <br>
                        <div class="panel-group" id="panel-716255">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-716255" href="#panel-element-411213">初识Java</a>
                                </div>
                                <div id="panel-element-411213" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <a href="/"> 初识Java，Java适合用来干什么？......</a>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-716255" href="#panel-element-133237">初识Python</a>
                                </div>
                                <div id="panel-element-133237" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <a href="/"> 初识Python，Java适合用来干什么？......</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div style="background:#000;color:#FFF;width: 100%;bottom: 0;">
    <center>
        © 2019 hellofood.design 版权所有 <br>
        <a href="http://www.miitbeian.gov.cn/">ICP证:琼ICP备19000528号</a>
    </center>
</div>

</body>
</html>