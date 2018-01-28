<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/Imgstyle.css" />
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/PicCarousel.js"></script>
</head>
<body>
	<header class="top" id="con">
		<div class="font-img">
			<h1>Blank</h1>
		</div>
		<div class="font">

			<p class="kassing-p">用心去感受这个世界的美</p>
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
			<div class="container">
<div class="poster-main A_Demo">
	<div class="poster-btn poster-prev-btn"></div>
	<ul class="poster-list">
	<s:iterator value="imgs">
							<li class="poster-item"><img src="${pageContext.request.contextPath}/${imgUrl}" width="519" height="292"></li>
						</s:iterator>
		<li class="poster-item"><img src="img/1.jpg" width="519" height="292"></li>
		
	</ul>
	<div class="poster-btn poster-next-btn"></div>
</div></div>
			
		</article>
</div>
   <script>
$(".A_Demo").PicCarousel("init");
$(".B_Demo").PicCarousel({
"width":1000,		
"height":300,		
"posterWidth":520,	
"posterHeight":300,
"scale":0.9,		
"speed":500,	
"autoPlay":true,	
"delay":1000,	
"verticalAlign":"top"	
});
var mychar = document.getElementById("con");
mychar.style.width = screen.width - 17 + "px";
</script>

</body>
</html>
