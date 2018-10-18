<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>角色拥有的菜单</title>
<style type="text/css">
	.oneMenu li{
		margin-left: 30px;
   		padding: 5px;
	}
	.MenuName{
		cursor:pointer;
	}
	.oneMenu .OneMenuName{
		font-size: 16px;
    	font-weight: 800;
	}
	.oneMenu{
	    width: 370px;
	    margin: 10px auto;
	    text-align: left;
	}
	.childMenuList{
		display:none;
	}
	.bg{
		display:inline-block;
		width:24px;
		height:24px;
		background: url("./resources/img/toggleBg.png")no-repeat;
		background-size:24px 48px;
		position: relative;
	    top: 9px;
	    left: 9px;
	    cursor:pointer;
	}
</style>
</head>
<body>
	<div class="upRoleMenu">
		<div class="page-header">
			<h4 class="roleId" roleId="${roleId }">
				角色拥有的菜单
			</h4>
		</div>
		<div>
			<c:forEach items="${menus }" var="menu">
				<div class="oneMenu">
					<c:if test="${menu.isHave == 0 }">
						<input type="checkbox" isHave="false" value="${menu.menuId }" />
					</c:if>
					<c:if test="${menu.isHave == 1 }">
						<input type="checkbox" isHave="true" checked="checked" value="${menu.menuId }" />
					</c:if>
					<i class="MenuName OneMenuName">${menu.menuName }</i>
					<span>
						<i class="bg" isexpand="false"></i>
					</span>
					<c:if test="${menu.childMenu != null }">
						<ul class="childMenuList">
							<c:forEach items="${menu.childMenu }" var="cmenu">
								<li class="childMenu">
									<c:if test="${cmenu.isHave == 0 }">
										<input type="checkbox" isHave="false" value="${cmenu.menuId }" />
									</c:if>
									<c:if test="${cmenu.isHave == 1 }">
										<input type="checkbox" isHave="true" checked="checked" value="${cmenu.menuId }" />
									</c:if>
									<span class="MenuName">${cmenu.menuName }</span>
								</li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
			</c:forEach>
			<c:if test="${message != null && message == 1}">
				<script type="text/javascript">
					$(function(){
						$(".oneMenu input").prop("disabled", "disabled");
					});
				</script>
			</c:if>
			<c:if test="${message != null && message == 0}">
				<button type="button" class="btn btn-warning roleMenuAlert">修改</button>
				<script type="text/javascript">
					$(function(){
						$(".MenuName").each(function(){  //当二级菜单的名称被点击时
							$(this).click(function(){
								if(!$(this).prev().is(":checked")){ //判断对应的复选框是否被选中
									//如果对应的复选框未被选中,则让该复选框变为选取
									$(this).prev().prop('checked',true).change();
								}else{
									//如果对应的复选框被选中,则让该复选框变为未选取
									$(this).prev().prop('checked',false).change();
								}
							});
						});
					});
				</script>
			</c:if>
		</div>
	</div>
</body>
<script src="./resources/js/tool.js"></script>
<script src="./resources/js/haveAllMenu.js"></script>
</html>