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
    <link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/ResponseFormula.css" />
    <style type="text/css">
        @media(max-width: 475px){
            .col-xs-12 .input-group span,.col-xs-12 .input-group input,.form-group,.form-control{
                font-size: 10px;
            }
        }
        h4{
        	text-align: center;
        }
        .notAvailable {
        	position: absolute;
		    display: block;
		    right: -87px;
		    top: 6px;
		    color: red;
        }
        @media(max-width: 690px){
        	.notAvailable {
	        	position: absolute;
			    display: block;
			    right: 30px;
			    top: 7px;
			    color: red;
			    z-index: 10;
        	}
        }
    </style>
</head>
<body>
    <div class="row">
    	<c:if test="${type==null&&type!=1 }">
        	<h4>用户注册</h4>
        </c:if>
        <c:if test="${type!=null&&type==1 }">
        	<h4>查询用户</h4>
        </c:if>
        <form class="bs-example bs-example-form addUser" role="form">
	       <c:if test="${type!=null&&(type==1||type==3) }">
	        	<div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
	                <div class="input-group">
	                    <span class="input-group-addon">用户id：</span>
	                    <input type="text" name="eId" readonly="true" class="form-control"
	                    value="${supplierList.get(0).supplierId }">
	                </div><br/>
	            </div>
            </c:if>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">用户姓名</span>
                    <input type="text" name="eName" maxlength="11" maxlength="15" class="form-control" placeholder="姓名不能为空"
                    value="${supplierList.get(0).supplierIphone }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</span>
                    <input type="text" name="eAccount" maxlength="10" class="form-control" placeholder="账号不能为空"
                    value="${supplierList.get(0).supplierAddress }">
                    <span class="accountYz"></span>
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                    <input type="password" name="ePassword" maxlength="15" class="form-control" placeholder="密码不能为空"
                    value="${supplierList.get(0).supplierAddress }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">确认密码</span>
                    <input type="password" name="ePasswordTwo" maxlength="15" class="form-control" placeholder="确认密码不能为空"
                    value="${supplierList.get(0).supplierAddress }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">联系电话</span>
                    <input type="text" name="eIphone" maxlength="11" class="form-control" placeholder="联系电话不能为空"
                    value="${supplierList.get(0).supplierBusiness }">
                </div><br/>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="form-group">
                    <label>备注</label>
                    <textarea class="form-control" rows="3" name="eNote">${supplierList.get(0).supplierNote }</textarea>
                </div>
                <c:if test="${type==null }">
                	<button type="button" class="btn btn-success add" st="1">注&nbsp;&nbsp;册</button>
                </c:if>
                <c:if test="${type!=null && type==3 }">
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
		popUpMessage("body","注册成功",4000,30,45,false);
	</script>
</c:if>
<c:if test="${message!=null&&message==0 }">
	<script type="text/javascript">
		popUpMessage("body","注册失败",4000,30,45,false);
	</script>
</c:if>
<script src="./resources/js/tool.js"></script>
<script type="text/javascript">
    $(function(){
    	var isAvailable = true;
    	$("input[name='eAccount']").bind("input propertychange", function(){
    		$.ajax({
    	        url:"user/findByAccount",
    	        dataType:"json",
    	        data: JSON.stringify({account:$(this).val(),type:1}),
    	        contentType:"application/json;charset=UTF-8",
    	        type: "post",
    	        beforeSend: function(){
    	            $("body").append("<img class='lodingImg' src='./resources/img/ajax_loading.gif' width='50' height='50' style='position: fixed;top: 43%;left:51%;z-index: 100;'/>");
    	        },
    	        success:function(result){
    	        	$(".lodingImg").remove();
    	        	if(result == 1){
    	        		$("input[name='eAccount']").after("<span class='notAvailable'>该名称不可用</span>");
    	        		isAvailable = false;
    	        	}else{
    	        		$(".notAvailable").remove();
    	        		isAvailable = true;
    	        	}
    	        },
    	        error:function(XMLHttpRequest, textStatus, errorThrown){
    	            popUpMessage("body","加载失败...",3000,30,45,false);
    	            $(".lodingImg").remove();
    	        },
    	    });
  		})
        $(".add").on("click",function(){
            //验证姓名
            if(checkInput("input[name='eName']","姓名不能为空")) return false;
            //验证账号
            if(checkInput("input[name='eAccount']","账号不能为空")) return false;
            if(!isAvailable){
            	popUpMessage("body","账号已存在，不可使用",4000,33,48,false);
            	$("input[name='eAccount']").focus();
            	$("input[name='eAccount']").parent().addClass("has-error");
            	return false;
            }else{
            	$("input[name='eAccount']").parent().removeClass("has-error");
            }
            var account = /\S[A-z0-9]{4,9}$/; //账号验证
            if(!account.test($("input[name='eAccount']").val())){
            	popUpMessage("body","账号只能为5-10位的数字或字母",6000,33,48,false);
            	$("input[name='eAccount']").focus();
            	$("input[name='eAccount']").parent().addClass("has-error");
            	return false;
            }else{
            	$("input[name='eAccount']").parent().removeClass("has-error");
            }
            //验证密码
            if(checkInput("input[name='ePassword']","密码不能为空")) return false;
            var password = /\S[A-z0-9]{5,14}$/; //密码验证
            if(!password.test($("input[name='ePassword']").val())){
            	popUpMessage("body","密码只能为6-15位的数字或字母",6000,33,48,false);
            	$("input[name='ePassword']").focus();
            	$("input[name='ePassword']").parent().addClass("has-error");
            	return false;
            }else{
            	$("input[name='ePassword']").parent().removeClass("has-error");
            }
            //验证确认密码
            if(checkInput("input[name='ePasswordTwo']","确认密码不能为空")) return false;
            //验证确认密码
            if($("input[name='ePasswordTwo']").val()!=$("input[name='ePassword']").val()){
            	popUpMessage("body","确认密码错误",3000,30,45,false);
            	$("input[name='ePasswordTwo']").focus();
            	$("input[name='ePasswordTwo']").parent().addClass("has-error");
            	return false;
            }else{
            	$("input[name='ePasswordTwo']").parent().removeClass("has-error");
            }
          	//验证电话
            if(checkInput("input[name='eIphone']","联系电话不能为空")) return false;
          	
            var contactNumber = $("input[name='eIphone']").val(); //手机号
            var sz = /\d{5,11}$/; //手机号验证

            //验证手机号
            if(!sz.test(contactNumber)){
                $("input[name='eIphone']").parent().addClass("has-error");
                $("input[name='eIphone']").focus();
                popUpMessage("body","请输入正确的手机号",3000,30,45,false);
                return false;
            }else{
                $("input[name='eIphone']").parent().removeClass("has-error");
            }
            if($(this).attr("st")=='3'){
            	ajaxSubmit("supplier/update?type=3", ".main", $(".addSupplierform").serialize());
            	$(".modal-backdrop").hide();
            	return false;
            }else if($(this).attr("st")=='1'){
            	ajaxSubmit("user/add?type=1", "body", $(".addUser").serialize());
            	return false;
            }
        });
    });
</script>
</html>