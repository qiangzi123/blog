
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta charset="utf-8" />
<title>留些话</title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<header class="top" id="con">
		<div class="font-img">
			<h1>Blank </h1>
		</div>
		<div class="font">
		
			<p class="kassing-p">
				用心去感受这个世界的美
			</p>
			<p class="kassing-p">
				<a href="http://user.qzone.qq.com/1048222543">强子空间</a>
			</p>
		</div>
	</header>
	<nav>
		<ul>
			<li><a href="XZS_index.action">心中思</a></li>
			<li><a href="XZS_index.action">碎碎念</a></li>
			<li><a href="img_imgpage.action">图片墙</a></li>
			
			<li><a href="Message_selectList.action">留点话</a></li>
		</ul>
	</nav>
	<div class="main">
		<article class="left">
			<div class="message-panel">
				<div class="report">
					<form name="messige" action="Message_addMessage.action" method="post">
						<input type="text" placeholder="请输入您的名字" name="users" id="users" />
						<textarea type="text" rows="5" name="message" id="message"></textarea>
						<button type="submit" onfocus="f()">留言</button>
					</form>
				</div>
					
				            <s:iterator value="#list">
							        <div class="messages">
								    <div class="head">
									<img src="img/logo.png" />
									</div>
									<div class="message-content">
									<span>${users}</span>
									<p><span>${message}</span></p><br>
									</div>
									<h5 align="right">留言时间&nbsp;&nbsp;&nbsp;<span>${time}</span></h5>
									</div>
									</s:iterator>
			</div>
		</article>
		<aside class="right">
			<div class="right-top">
				<div class="font-img">
					<h1>Blank </h1>
				</div>
				<div class="peo">
					<i>“Blank 的个人博客，欢迎您的访问”</i> <span>by . Blank </span>
				</div>

			</div>
			<div class="right-middle">
				<p>
					<strong>网站</strong> <span>&nbsp;&nbsp;<a href="http://user.qzone.qq.com/1048222543" target="_Blank">点击进入</a></span>
				</p>
				<p>
					<strong>微博</strong> <span>&nbsp;&nbsp;<a href="http://weibo.com/u/2122486340" target="_Blank">@啊啦叭叭啦</a></span>
				</p>
			</div>
			<div class="right-buttom">
				<p>
					<strong>分享</strong> <a href="#"><img src="img/wechat.ico" /> </a>

				</p>
			</div>
		</aside>
	</div>
	<script>
		var mychar = document.getElementById("con");

		mychar.style.width = screen.width - 17 + "px";
	</script>
	<script language="javascript">
		function f() {
			var password2 = document.getElementById("users");
			var password = document.getElementById("message");
			if (users.value == "" || message.value == "") {
				alert("输入点文字吧");
			}
		}
	</script>
</body>
</html>