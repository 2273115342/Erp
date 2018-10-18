<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>删除供应商</title>
</head>
<body>
	<div class="page-header">
		<h4>删除供应商</h4>
	</div>
	<div>
		<form>
			<div class="row">
				<div
					class="col-xs-5 col-sm-4 col-md-2 col-sm-offset-2 col-md-offset-4"
					style="padding:0 0;">
					<select name="queryWay" class="form-control">
						<option>供应商编号</option>
						<option>单位名称</option>
						<option>联系人</option>
					</select>
				</div>
				<div class="col-xs-5 col-sm-4 col-md-2" style="padding:0 0;">
					<input type="text" class="form-control content"
						placeholder="请输入查询内容">
				</div>
				<div class="col-xs-2 col-sm-1 col-md-1" style="padding: 0 0;">
					<button type="button" class="btn btn-default" id="querySupplier" style="float: left;">查询</button>
				</div>
			</div>
		</form>
	</div>

	<div class="table-responsive">
		<table class="table table-hover table-striped"
			style="text-align: center;">
			<thead>
				<tr>
					<th>供应商编号</th>
					<th>单位名称</th>
					<th>联系人</th>
					<th>联系电话</th>
					<th>主营业务</th>
					<th>地址</th>
					<th>是否送货</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td><c:if test="${supplier.supplierId!=null}">${supplier.supplierId}</c:if></td>
						<td><c:if test="${supplier.supplierName!=null}">${supplier.supplierName}</c:if></td>
						<td><c:if test="${supplier.supplierPeople!=null}">${supplier.supplierPeople}</c:if></td>
						<td><c:if test="${supplier.supplierIphone!=null}">${supplier.supplierIphone}</c:if></td>
						<td><c:if test="${supplier.supplierBusiness!=null}">${supplier.supplierBusiness}</c:if></td>
						<td><c:if test="${supplier.supplierAddress!=null}">${supplier.supplierAddress}</c:if></td>
						<td><c:if test="${supplier.supplierDelivery!=null}">${supplier.supplierDelivery}</c:if></td>
						<td>
							<button class="btn btn-danger">删除</button>
						</td>
					</tr>
				</c:forEach>
				<c:if test="${supplierList==null||supplierList.size()<=0 }">
					<tr>
						<td>
							没有满足条件的内容！
						</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<ul class="pagination"><!-- 选中样式：active -->
			<li><a href="javascript:void(0);" index="1">首页</a></li>
			<%-- <li <c:if test="${paging.pagestart<5 }">class="disabled"</c:if>><a href="javascript:void(0);">&laquo;</a></li> --%>
			<c:forEach begin="${paging.pagestart }" end="${paging.pageEnd }" varStatus="pagings">
				<c:if test="${pagings.index==paging.offset }">
					<li class="active"><a href="javascript:void(0);" index="${pagings.index}">${pagings.index }</a></li>
				</c:if>
				<c:if test="${pagings.index!=paging.offset }">
					<li><a href="javascript:void(0);"  index="${pagings.index}">${pagings.index }</a></li>
				</c:if>
			</c:forEach>
			<%-- <li <c:if test="${paging.pageEnd<5 }">class="disabled"</c:if>><a href="javascript:void(0);">&raquo;</a></li> --%>
			<li><a href="javascript:void(0);" index="${paging.totalPages }">末页</a></li>
		</ul>
	</div>
</body>
<c:if test="${message!=null&&message==1 }">
	<script type="text/javascript">
		popUpMessage("body","删除成功",4000,30,45,false);
	</script>
</c:if>
<c:if test="${message!=null&&message==0 }">
	<script type="text/javascript">
		popUpMessage("body","删除失败",4000,30,45,false);
	</script>
</c:if>
<script src="./resources/js/tool.js"></script>
<script type="text/javascript">
	$(function() {
		//删除点击的响应
		$(".btn-danger").each(function(){
			$(this).click(function() {
				if(confirm("确定要删除吗？删除不可恢复。")){
					var data = {"type":"2","content":$(this).parent().siblings().eq(0).text()}
					ajaxSubmit("supplier/delete?type=2", ".main", data);
				}
			});
		});
		
	//查询点击的响应
	$("#querySupplier").click(function() {
			var data = {
				"content" : $(".content").val(),
			}
			if($(".content").val()==null||$(".content").val().trim()==""){
				ajaxSubmit("supplier/query?type=2", ".main", "");
				return false;
			}
			switch ($("select[name='queryWay']").val()) {
			case "供应商编号":
				var sz = /\d$/; //正则表达式验证
				if(!sz.test($(".content").val())){
					alert("请输入正确的内容！");
					break;
				}
				ajaxSubmit("supplier/findById?type=2", ".main", data);
				break;
			case "单位名称":
				ajaxSubmit("supplier/findByName?type=2", ".main", data);
				break;
			case "联系人":
				ajaxSubmit("supplier/findByPeople?type=2", ".main", data);
				break;
			default:
				ajaxSubmit("supplier/query?type=2", ".main", "");
				break;
			}
		});

		//分页点击的响应
		$(".pagination li a").each(function() {
			$(this).click(function() {
				var data = {
					"offset" : $(this).attr("index"),
					"limit" : "5"
				};
				ajaxSubmit("supplier/query?type=2", ".main", data);
			});
		});
	});
</script>
</html>