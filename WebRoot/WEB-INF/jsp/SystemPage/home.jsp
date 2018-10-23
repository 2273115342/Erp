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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="format-detection" content="telephone=yes"/>
    <meta name="msapplication-tap-highlight" content="no" />
    <title>主页</title>
    <link rel="stylesheet" href="<%=path %>/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/ResponseFormula.css" />
    <script src="<%=path %>/resources/js/jquery-3.2.1.min.js"></script>
    <script src="<%=path %>/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="<%=path %>/resources/js/tool.js"></script>
    <style type="text/css">
        a:focus{
            text-decoration:none;
        }
        .row {
            margin-right: 0px;
            margin-left: 0px;
        }
        .box{
            position: relative;
            border-radius: 3px;
            background: #ffffff;
            margin-bottom: 20px;
            width: 100%;
            box-shadow: 0 1px 1px rgba(0cursor:pointer,0,0,0.1);
        }
    </style>
</head>
<body>
    <div class="row" style="text-align: center;background-color: #f9f9f9;">
        <!--头部开始-->
        <div class="col-xs-12 col-sm-12 col-md-12 top" style="background-color: #3c8dbc;height:100px;padding-right: 0px;padding-left: 0px;">

        </div>
        <!--头部结束-->

        <!--菜单开始-->
        <div class="col-xs-4 col-sm-2 col-md-2 left" style="padding: 0px;background-color: #222d32;">

        </div>
        <!--菜单结束-->

        <!--主体开始-->
        <div class="col-xs-8 col-sm-10 col-md-10" style="padding-right: 0px;padding-left: 0px;">
            <div class="main box" style="padding: 20px 20px 30px;">

            </div>
        </div>
        <!--主体结束-->
    </div>
    <script type="text/javascript">
        $(function(){
        	ajaxSubmit("top",".top",null);
        	ajaxSubmit("left",".left",null);
        	ajaxSubmit("right",".main",null);

            $(".left").height($(document).height()-$(".top").height());

            $(window).resize(function(){
                $(".left").height($(document).height()-$(".top").height());
            });
        });
    </script>
</body>
</html>
