
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title></title>
</head>
<body>

<h3 align="right"><a href="Admin_index.action">管理员登陆</a></h3>
	<header class="top" id="con">
		<div class="font-img">
			<h1>Blank</h1>
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
	 <s:iterator value="#list" id="list">
		<div class="section">
		<div class="title">
		<h3><a href="XZS_read.action?id=${id}">${title}</a></h3>
		<span>发布时间：<span>${time}</span>&nbsp;作者：<span><s:property value="author"/></span>
		</span>
		</div>
		<div class="story-main">
		<p>${content}</p>
		</div>
		<%-- <button type="button" onclick="window.location.href='XZS_read.action?id=${id}'">查看详情</button>
		 --%>
		</div>
		</s:iterator>
	</article>  
	<aside class="right">
		<div class="right-top">
			<div class="font-img">
				<h1>Blank</h1>
			</div>
			<div class="peo">
				<i>“Blank的个人博客，欢迎您的访问”</i> <span>by . Blank</span>
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
</body>
</html>
