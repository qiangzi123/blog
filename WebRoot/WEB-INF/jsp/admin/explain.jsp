<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>Bootstrap 101 Template</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
		html,body {
			font: 12px/1.5 "Microsoft Yahei", "Hiragino Sans GB", Helvetica, "Helvetica Neue", "微软雅黑", Tahoma, Arial, sans-serif;
			color: #14191E;
		}
	</style>
</head>
<body>
	<nav style="height:40px;border-radius:0;" class="navbar navbar-inverse">
		<div class="container">
			<h4 style="color:white;text-align:center">个人博客后台管理系统</h4>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<jsp:include   page="comment_index.jsp"/>
			<!--右内容-->
			<div class="col-xs-10 main">
				<ul class="breadcrumb">
                    <li><a href="#kj" role="tab" data-toggle="tab">系统说明</a></li>
                </ul>
                <div class="tab-content">
                	
                	<div class="tab-pane active" id="kj">
                    <h3>
本系统采用的是SSH2框架(Spring3.2+struts2.3+hibernate4.1   注解)<br>
后台富文本编辑器是 struts+ckfinder+ckeditor<br>
系统类型：个人博客<br>
模块：四大模块  心中思 留言板  待开发：碎碎念  悄悄话<br>
功能：留言 浏览文章 <br>
后台模块：留言的删除  文章的发表及删除   评论删除(待开发)<br>
数据库：mysql5.0<br>
数据库名称：blog <br>
编码：UTF-8<br>
语言：J2EE ongl EL JSTL<br>
配置文件：resource文件夹<br>
作者：朱志强<br>
QQ：1048222543<br>
初次完成开发时间 :2015-07-16<br>
                    </h3>
                	</div>
                	</div>
					
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>