<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<link rel="stylesheet" href="static/css/bootstrap.min.css" />
<link rel="stylesheet" href="static/css/font-awesome.min.css"/>
<link rel="stylesheet" href="static/css/style.css" />
<link rel="stylesheet" href="static/css/Login.css" />
<title>系统登录</title>
<!--[if lt IE 9]>
<script src="static/js/html5shiv.min.js"></script>
<script src="static/js/respond.min.js"></script>   　	  
    <![endif]-->
</head>
<body>
	<div class="login_header">
		<div class="container">
			<div class="login_sub">
				<a href="index.html"><img src="static/img/gold-cup.png"
					style="width: 80%;"></a>
			</div>
			<div class="login_Title">
				<h3>欢您使用金杯电工SRM系统</h3>
			</div>
		</div>
	</div>
	<div class="login_main">
		<div class="container">
			<div class="login">
				<h2 class="loginH2 boxH2">
					<a class="regH2a" style="padding-bottom: 9px;" href="javascript:;">系统登录</a>
				</h2>
				<div class="login_container">
					<div class="form-group">
						<label class="sr-only">邮箱/用户名</label> <input type="text"
							class="form-control" name="loginid" id="loginid" placeholder="邮箱/用户名" />
					</div>
					<div class="form-group">
						<label class="sr-only">密码</label> <input type="password"
							class="form-control" name="password" id="password" placeholder="密码" />
					</div>
					<div class="checkbox-p">
						<div class="checkbox pull-left">
							<label> <input type="checkbox">记住我
							</label>
						</div>
						<p class="text-center pull-right">
							<a href="#" onclick="swapScreen('forgot');return false;">忘记密码了?</a>
						</p>
					</div>
					<button type="submit" class="btn btn-primary btn-block">登
						录</button>
					<p class="text-center">
						<br> <a href="#">没有账号,请联系系统管理员</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="footer-links">
				<ul class="nav nav-pills container">
					<li role="presentation"><a href="index.html">首页</a></li>
					<li role="presentation"><a href="procurement_Notices.html">采购公告</a></li>
					<li role="presentation"><a href="procurement_catalogue.html">招标公告</a></li>
					<li role="presentation"><a href="procurement_catalogue.html">采购目录</a></li>
					<li role="presentation"><a href="user_instructions.html">用户须知</a></li>
					<li role="presentation"><a href="contact_us.html">联系我们</a></li>
					<li role="presentation"><a href="supervise_complaints.html">监督投诉</a></li>
				</ul>
			</div>
			<div class="footer-text">
				<p>建议您使用IE9+、FireFox、Google Chrome，分辨率1280*800及以上浏览本网站，获得更好用户体验。</p>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="static/js/jquery.min.js"></script>
	<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="static/js/scripts.js"></script>
	<script type="text/javascript" src="static/js/event.js"></script>
	<script type="text/javascript" src="static/js/Login.js"></script>
</body>
</html>