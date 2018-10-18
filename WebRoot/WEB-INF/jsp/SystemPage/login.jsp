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
    <title>登录</title>
    <link rel="stylesheet" href="<%=path %>/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=path %>/resources/js/jquery-3.2.1.min.js"></script>
    <script src="<%=path %>/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="<%=path %>/resources/js/tool.js"></script>
</head>
<body>
    <img src="<%=path %>/resources/img/timg.jpg" width="100%" height="100%" style="position: absolute;top: 0px;"/>
    <div class="container">
       <div class="row">
           <div class="col-xs-8 col-sm-5 col-md-4 col-xs-offset-2 col-sm-offset-3 col-md-offset-4" style="border: 1px solid #999;padding:20px;margin-top: 150px;background-color: white;">
               <h4 style="text-align: center">用户登录</h4>
               <form class="bs-example bs-example-form" role="form" action="loginCheck" method="post">
                   <div class="input-group">
                       <span class="input-group-addon">账号</span>
                       <input type="text" value="${loginName }" name="loginName" class="form-control accountNumber" placeholder="请输入账号">
                   </div>
                   <br>
                   <div class="input-group">
                       <span class="input-group-addon">密码</span>
                       <input type="password" value="${password }"  name="password" class="form-control password" placeholder="请输入密码">
                   </div>
                   <br>
                   <div class="row">
                       <div class="col-xs-7 col-sm-7 col-md-7">
                           <div class="input-group">

                               <input type="text" class="form-control identifyingCode " placeholder="请输入验证码">
                           </div>
                       </div>
                       <div class="col-xs-5 col-sm-5 col-md-5">
                           <img src="<%=path %>/resources/img/139-150323112055.jpg" class="img-responsive" alt="Cinque Terre" width="100" height="80">
                       </div>
                       <div class="col-xs-6 col-sm-6 col-md-6" style="margin-top: 20px;">
                           <button type="submit" class="btn btn-success btn-block login">登录</button>
                       </div>
                       <div class="col-xs-6 col-sm-6 col-md-6" style="margin-top: 20px;">
                       		<button type="button" class="btn btn-default btn-block addUser" data-toggle="modal"
								data-target="#myModal">注册</button>
                       </div>
                   </div>
               </form>
           </div>
       </div>
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
<c:if test="${message!=null && message == 1 }">
	<script type="text/javascript">
		$(function(){
			popUpMessage("body", "注册成功", 3000, 35, 45, false);
			$(".password").focus();
		});
	</script>
</c:if>
<c:if test="${loginName!=null && message ==null}">
	<script type="text/javascript">
		$(function(){
			popUpMessage("body", "账号或密码错误", 3000, 35, 45, false);
			$(".accountNumber").focus();
		});
	</script>
</c:if>

<script type="text/javascript">
    $(function(){
        $(".login").on("click",function(){
            if(checkInput(".accountNumber","账号不能为空")) return false; //校验账号
            if(checkInput(".password","密码不能为空")) return false; //校验密码
            if(checkInput(".identifyingCode","验证码不能为空")) return false;  //校验验证码
        });
        $(".addUser").click(function(){
        	ajaxSubmit("user/add", ".modal-body", null);
        });
    });
</script>
</html>
