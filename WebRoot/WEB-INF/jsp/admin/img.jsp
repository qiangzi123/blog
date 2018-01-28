<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Bootstrap 101 Template</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
html,body {
	font: 12px/1.5 "Microsoft Yahei", "Hiragino Sans GB", Helvetica,
		"Helvetica Neue", "微软雅黑", Tahoma, Arial, sans-serif;
	color: #14191E;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckfinder/ckfinder.js"></script>
</head>
<body>
	<nav style="height:40px;border-radius:0;" class="navbar navbar-inverse">
		<div class="container">
			<h4 style="color:white;text-align:center">个人博客后台管理系统</h4>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="comment_index.jsp" />
			<!--右内容-->
			<div class="col-xs-10 main">
				<ul class="breadcrumb">
					<li><a href="#kj" role="tab" data-toggle="tab">图片列表</a></li>
				</ul>
				<div class="tab-content">
					<!--经验共享列表-->
					<div class="tab-pane active" id="kj">
						<button class="btn btn-success btn-block" data-toggle="modal"
							data-target="#addres">添加</button>
						<table class="table table-hover">
							<thead>
								<tr>
									<!-- <th>编号</th> -->
									<th>编号</th>
									<th>标题</th>
									<th>图片</th>
									<th>发布时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#imgs">
									<tr>
										<%-- <th>${postion}</th> --%>
										<th>${id}</th>
										<th>${title}</th>
										<th><img
											src="${pageContext.request.contextPath}/${imgUrl}"
											height="80" width="80" /></th>
										<th>${createTime}</th>
										<th>
											<button class="btn btn-danger btn-sm"
												onclick="window.location.href='img_delete.action?id=${id}'">删除</button>
										</th>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
					<!--添加资源-->
					<div class="modal fade" id="addres" data-backdrop="static"
						tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">添加图片</h4>
								</div>
								<div class="modal-body">
									<s:form cssClass="form-horizontal" method="post"
										action="img_addImg.action" enctype="multipart/form-data">

										<div class="form-group">
											<label class="col-xs-2">标题</label>
											<div class="col-xs-10">
												<input type="text" name="title" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-xs-2">图片</label>
											<div class="col-xs-10">
												<input type="file" name="upload" class="form-control" />
											</div>
										</div>
										<div class="form-group">
											<div class="col-xs-10 col-xs-offset-2">
												<button class="btn btn-success btn-block">添加</button>
											</div>
										</div>
									</s:form>
								</div>
							</div>
						</div>
					</div>
					<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
					<script
						src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>