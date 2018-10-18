<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>查询角色拥有的菜单</title>
</head>
<body>
	<div class="page-header">
		<h4>查询角色拥有的菜单</h4>
	</div>
	<div class="table-responsive">
		<table class="table table-hover table-striped"
			style="text-align: center;">
			<thead>
				<tr>
					<th>角色id</th>
					<th>角色名</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roles}" var="role">
					<tr>
						<td><c:if test="${role.roleId!=null}">${role.roleId}</c:if></td>
						<td><c:if test="${role.roleName!=null}">${role.roleName}</c:if></td>
						<td>
							<c:if test="${message == null}">
								<button class="btn btn-primary queryRoleMenu" data-toggle="modal"
									data-target="#myModal">查看</button>
							</c:if>
							<c:if test="${message != null && message == 1 }">
								<button class="btn btn-warning updateRoleMenu" data-toggle="modal"
								data-target="#myModal">修改</button>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body"></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
<script src="./resources/js/tool.js"></script>
<script type="text/javascript">
	$(function() {
		//查看点击的响应
		$(".queryRoleMenu").each(function(){
			$(this).click(function() {
				var data = {type : 1,roleId : $(this).parent().siblings().eq(0).text()}
				ajaxSubmit("roleMenu/findByRoleId", ".modal-body", data);
			});
		});
		//修改点击的响应
		$(".updateRoleMenu").each(function(){
			$(this).click(function() {
				var data = {type : 0,roleId : $(this).parent().siblings().eq(0).text()}
				ajaxSubmit("roleMenu/findByRoleId", ".modal-body", data);
			});
		});
	});
</script>
</html>