<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>新增供应商</title>
    <style type="text/css">
        @media(max-width: 475px){
            .col-xs-12 .input-group span,.col-xs-12 .input-group input,.form-group,.form-control{
                font-size: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="row">
    	<c:if test="${type==null&&type!=1 }">
        	<h4>新增供应商</h4>
        </c:if>
        <c:if test="${type!=null&&type==1 }">
        	<h4>查询供应商</h4>
        </c:if>
        <form class="bs-example bs-example-form addSupplierform" role="form">
	       <c:if test="${type!=null&&(type==1||type==3) }">
	        	<div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
	                <div class="input-group">
	                    <span class="input-group-addon">供应商id：</span>
	                    <input type="text" name="supplierId" readonly="true" class="form-control"
	                    value="${supplierList.get(0).supplierId }">
	                </div><br/>
	            </div>
            </c:if>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">单位名称</span>
                    <input type="text" name="supplierName" class="form-control" placeholder="单位名称不能为空" 
                    value="${supplierList.get(0).supplierName }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">联&nbsp;&nbsp;系&nbsp;&nbsp;人</span>
                    <input type="text" name="supplierPeople" class="form-control" placeholder="联系人不能为空"
                    value="${supplierList.get(0).supplierPeople }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">联系电话</span>
                    <input type="text" name="supplierIphone" maxlength="11" class="form-control" placeholder="联系电话不能为空"
                    value="${supplierList.get(0).supplierIphone }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">主营业务</span>
                    <input type="text" name="supplierBusiness" class="form-control" 
                    value="${supplierList.get(0).supplierBusiness }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</span>
                    <input type="text" name="supplierAddress" class="form-control" 
                    value="${supplierList.get(0).supplierAddress }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="form-group">
                    <label>是否送货</label>
                    <select name="supplierDelivery" class="form-control">
                        <option value="0" <c:if test="${supplierList.get(0).supplierDelivery=='0'}">selected="selected"</c:if>>不送货</option>
                        <option value="1" <c:if test="${supplierList.get(0).supplierDelivery=='1'}">selected="selected"</c:if>>送货</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="form-group">
                    <label>备注</label>
                    <textarea class="form-control" rows="3" name="supplierNote">${supplierList.get(0).supplierNote }</textarea>
                </div>
                <c:if test="${type==null&&type!=1 }">
                	<button type="button" class="btn btn-success add" st="1">新&nbsp;&nbsp;增</button>
                </c:if>
                <c:if test="${type==3 }">
                	<button type="button" class="btn btn-warning add" st="3">修&nbsp;&nbsp;改</button>
                </c:if>
            </div>
        </form>
    </div>
</body>
<c:if test="${type!=null&&type==1 }">
	<!-- 如果是查看页面提交过来的，则禁用所有表单 -->
	<script type="text/javascript">
		$(function(){
			/* $("input,select,textarea").prop("readonly", true); */
			$(".addSupplierform input,.addSupplierform select,.addSupplierform textarea").prop("disabled", "disabled");
		});
	</script>
</c:if>
<c:if test="${message!=null&&message==1 }">
	<script type="text/javascript">
		popUpMessage("body","新增成功",4000,30,45,false);
	</script>
</c:if>
<c:if test="${message!=null&&message==0 }">
	<script type="text/javascript">
		popUpMessage("body","新增失败",4000,30,45,false);
	</script>
</c:if>
<script src="./resources/js/tool.js"></script>
<script type="text/javascript">
    $(function(){
        $(".add").on("click",function(){
            var contactNumber = $("input[name='supplierIphone']").val(); //手机号
            $("select[name='deliverGoods']").val(); //是否送货
            var sz = /\d{5,11}$/; //手机号验证

            //验证单位名称
            if(checkInput("input[name='supplierName']","单位名称不能为空")) return false;

            //验证联系人
            if(checkInput("input[name='supplierPeople']","联系人不能为空")) return false;

            //验证手机号
            if(!sz.test(contactNumber)){
                $("input[name='supplierIphone']").parent().addClass("has-error");
                $("input[name='supplierIphone']").focus();
                alert("请输入正确的手机号");
                return false;
            }else{
                $("input[name='supplierIphone']").parent().removeClass("has-error");
            }
            if($(this).attr("st")=='3'){
            	ajaxSubmit("supplier/update?type=3", ".main", $(".addSupplierform").serialize());
            	$(".modal-backdrop").hide();
            	return false;
            }else if($(this).attr("st")=='1'){
            	ajaxSubmit("supplier/add?type=1", ".main", $(".addSupplierform").serialize());
            	return false;
            }
        });
    });
</script>
</html>