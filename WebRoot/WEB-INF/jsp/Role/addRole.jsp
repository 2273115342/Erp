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
    <title>新增角色</title>
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
        	<h4>新增角色</h4>
        </c:if>
        <c:if test="${type!=null&&type==1 }">
        	<h4>查询角色</h4>
        </c:if>
        <form class="bs-example bs-example-form addRole" role="form">
	       <c:if test="${type!=null && type==1 }">
	        	<div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
	                <div class="input-group">
	                    <span class="input-group-addon">角色id：</span>
	                    <input type="text" name="roleId" readonly="true" class="form-control"
	                    value="${role.roleId }">
	                </div><br/>
	            </div>
            </c:if>
            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <div class="input-group">
                    <span class="input-group-addon">角色名称</span>
                    <input type="text" name="roleName" class="form-control" placeholder="角色名称不能为空"
                    value="${role.roleName }">
                </div><br/>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-4 col-sm-offset-4 col-md-offset-4" style="text-align: center">
                <c:if test="${type==null}">
                	<button type="button" class="btn btn-success add" st="1">新&nbsp;&nbsp;增</button>
                </c:if>
                <c:if test="${type!=null && type==1 }">
                	<button type="button" class="btn btn-warning add" st="3">修&nbsp;&nbsp;改</button>
                </c:if>
            </div>
        </form>
    </div>
</body>

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
            //验证单位名称
            if(checkInput("input[name='roleName']","角色名称不能为空")) return false;

            if($(this).attr("st")=='3'){
            	ajaxSubmit("role/update?type=1", ".main", $(".addRole").serialize());
            	$(".modal-backdrop").hide();
            	return false;
            }else if($(this).attr("st")=='1'){
            	ajaxSubmit("role/add?type=1", ".main", $(".addRole").serialize());
            	return false;
            }
        });
    });
</script>
</html>