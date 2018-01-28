
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/Login_style.css" />
<script type="text/javascript" src="js/Login_javascript.js"></script>
</head>
<body>
<h2 align="center">朱志强 修改制作</h2>
<div class="login_frame"></div>
<div class="LoginWindow">
  <div>
    <form method="post" action="Admin_login.action" onsubmit="return user_input()" class="login">
    <p>
      <label for="login">帐号:</label>
      <input type="text" name="username" id="id" value="">
    </p>
    <p>
      <label for="password">密码:</label>
      <input type="password" name="password" id="password" value="">
    </p>

    <p class="login-submit">
      <button type="submit" class="login-button">登录</button> 
    </p>

    </form>
    <p class="registration"><a href="#">注册 </a> <label style="color: red;">${yanzhengxinxi}</label> </p>
  </div>
</div>

<div id="timeArea"><script> LoadBlogParts();</script></div>

<div style="text-align:center;">
<p>来源:<a href="http://user.qzone.qq.com/1048222543" target="_blank">强子空间</a></p>
</div>

</body>
</html>