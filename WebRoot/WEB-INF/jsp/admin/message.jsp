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
                    <li><a href="#sy" role="tab" data-toggle="tab">留言</a></li>
				    <!-- <li><a href="#sy" role="tab" data-toggle="tab">共享评论</a></li> -->
                </ul>
                <div class="tab-content">
					<!--共享评论-->
					<div class="tab-pane active" id="sy">
                		<table class="table table-hover">
                			<thead>
                				<tr>
                				    <th>编号</th>
                				    <th>作者</th>
                					<th>留言内容</th>
                					<th>留言时间</th>
                					<th>操作</th>
                					<!-- <th>评论</th>
                					<th>操作</th> -->
                				</tr>
                			</thead>
                			<tbody>
                			<s:iterator value="#list">
                				<tr>
                					<th>${id}</th>
                					<th>${users}</th>
                					<th>${message}</th>
                					<th>${time}</th>
                					<th>
                						<button class="btn btn-danger btn-sm" onclick="window.location.href='Message_deleteMessage.action?id=${id}'" >删除</button>
                					</th>
                					</s:iterator>
                	
                			</tbody>
                		</table>
					</div>
					<!--视频资源-->
					<div class="tab-pane" id="sp">
						<button class="btn btn-success btn-block" data-toggle="modal" data-target="#addres">添加</button>
                		<table class="table table-hover">
                			<thead>
                				<tr>
                					<th>编号</th>
                					<th>标题</th>
                					<th>操作</th>
                				</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<th>001</th>
                					<th>oracle操作</th>
                					<th>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</th>
                				</tr>
                			</tbody>
                		</table>
					</div>
					<!--书籍资源-->
					<div class="tab-pane" id="sp">
						<button class="btn btn-success btn-block" data-toggle="modal" data-target="#addres">添加</button>
                		<table class="table table-hover">
                			<thead>
                				<tr>
                					<th>编号</th>
                					<th>标题</th>
                					<th>操作</th>
                				</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<th>001</th>
                					<th>oracle操作</th>
                					<th>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</th>
                				</tr>
                			</tbody>
                		</table>
					</div>
					<!--考试资源-->
					<div class="tab-pane" id="ks">
						<button class="btn btn-success btn-block" data-toggle="modal" data-target="#addres">添加</button>
                		<table class="table table-hover">
                			<thead>
                				<tr>
                					<th>编号</th>
                					<th>标题</th>
                					<th>操作</th>
                				</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<th>001</th>
                					<th>oracle操作</th>
                					<th>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</th>
                				</tr>
                			</tbody>
                		</table>
					</div>
                </div>			
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>