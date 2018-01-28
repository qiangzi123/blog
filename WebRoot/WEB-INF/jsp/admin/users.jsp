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
			<h4 style="color:white;text-align:center">Oracle后台管理系统</h4>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<jsp:include   page="comment_index.jsp"/>
			<!--右内容-->
			<div class="col-xs-10 main">
				<ul class="breadcrumb">
                    <li><a href="#addadm" role="tab" data-toggle="tab">管理员</a></li>
					<li><a href="#addu" role="tab" data-toggle="tab">普通用户</a></li>
                </ul>
                <div class="tab-content">
                	<div class="tab-pane active" id="addadm">
                		<button class="btn btn-success btn-block"  data-toggle="modal" data-target="#adduser">添加</button>
                		<table class="table table-hover">
                			<thead>
                				<tr>
                					<th>编号</th>
                					<th>用户名</th>
                					<th>密码</th>
                					<th>操作</th>
                				</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<td>01</td>
                					<td>admin01</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                				<tr>
                					<td>02</td>
                					<td>admin02</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                				<tr>
                					<td>03</td>
                					<td>admin03</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                			</tbody>
                		</table>	
                	</div>
                	<div class="tab-pane" id="addu">
                		<button class="btn btn-success btn-block"  data-toggle="modal" data-target="#adduser">添加</button>
                		<table class="table table-hover">
                			<thead>
                				<tr>
                					<th>编号</th>
                					<th>用户名</th>
                					<th>密码</th>
                					<th>操作</th>
                				</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<td>01</td>
                					<td>user01</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                				<tr>
                					<td>02</td>
                					<td>user02</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                				<tr>
                					<td>03</td>
                					<td>user03</td>
                					<td>*******</td>
                					<td>
                						<button class="btn btn-danger btn-sm">删除</button>
                					</td>
                				</tr>
                			</tbody>
                		</table>	
                	</div>
                </div>
			</div>
		</div>
	</div>
	<!--添加用户-->
		<div class="modal fade" id="adduser" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">添加用户</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-xs-2">用户名</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2">密码</label>
								<div class="col-xs-10">
									<input type="password" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2">重复密码</label>
								<div class="col-xs-10">
									<input type="password" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10 col-xs-offset-2">
									<button class="btn btn-success btn-block">添加</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>