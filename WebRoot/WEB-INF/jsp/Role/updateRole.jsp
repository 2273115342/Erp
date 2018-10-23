<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>修改角色</title>
</head>
<body>
	<div class="page-header">
		<h4>修改角色</h4>
	</div>

	<div class="table-responsive">
		<table class="table table-hover table-striped"
			style="text-align: center;">
			<thead>
				<tr>
					<th>角色编号</th>
					<th>角色名称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roleList}" var="role">
					<tr>
						<td><c:if test="${role.roleId!=null}">${role.roleId}</c:if></td>
						<td><c:if test="${role.roleName!=null}">${role.roleName}</c:if></td>
						<td>
							<button class="btn btn-warning" data-toggle="modal"
								data-target="#myModal">修改</button>
						</td>
					</tr>
				</c:forEach>
				<c:if test="${roleList==null||roleList.size()<=0 }">
					<tr>
						<td>
							没有满足条件的内容！
						</td>
					</tr>
				</c:if>
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
<c:if test="${message!=null&&message==1 }">
	<script type="text/javascript">
		popUpMessage("body","修改成功",4000,30,45,false);
	</script>
</c:if>
<c:if test="${message!=null&&message==0 }">
	<script type="text/javascript">
		popUpMessage("body","修改失败",4000,30,45,false);
	</script>
</c:if>
<script src="./resources/js/tool.js"></script>
<script type="text/javascript">
	$(function() {
		//修改点击的响应
		$(".btn-warning").each(function(){
			$(this).click(function() {
				ajaxSubmit("role/findById?type=1", ".modal-body",
					{"roleId":$(this).parent().siblings().eq(0).text()});
			});
		});
	});
</script>
</html>