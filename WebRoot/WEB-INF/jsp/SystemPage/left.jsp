<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>菜单页面</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/left.css" />
<script type="text/javascript" src="<%=path %>/resources/js/left.js"></script>
</head>
<body>
	<div class="">
		<ul class="menu">
			<c:forEach items="${MenuList }" var="menu">
				<li class="Topmenu">
					<h4 class="parentmenu">
						<a href="javascript:void(0);">${menu.menuName}</a>
					</h4>
					<ul class="son">
						<c:forEach items="${menu.childMenu }" var="childmenu">
							<li class="sonmenu">
								<a href="javascript:void(0);" address="${childmenu.menuLink }">${childmenu.menuName }</a>
							</li>
						</c:forEach>
					</ul>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>
