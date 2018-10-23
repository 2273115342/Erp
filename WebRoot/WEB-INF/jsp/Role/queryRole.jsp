<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>查询角色</title>
</head>
<body>
	<div class="page-header">
		<h4>查询角色</h4>
	</div>

	<div class="table-responsive">
		<table class="table table-hover table-striped"
			style="text-align: center;">
			<thead>
				<tr>
					<th>角色编号</th>
					<th>角色名称</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roles}" var="role">
					<tr>
						<td><c:if test="${role.roleId!=null}">${role.roleId}</c:if></td>
						<td><c:if test="${role.roleName!=null}">${role.roleName}</c:if></td>
					</tr>
				</c:forEach>
				<c:if test="${roles==null||roles.size()<=0 }">
					<tr>
						<td>
							没有满足条件的内容！
						</td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>