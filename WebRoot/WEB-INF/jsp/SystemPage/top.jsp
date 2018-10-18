<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>头部内容</title>
    <script src="<%=path %>/resources/js/jquery-3.2.1.min.js"></script>
    <style type="text/css">
        @media (max-width: 500px) {
            .info{
                font-size: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="row" style="color: white;">
        <div class="col-xs-6 col-sm-4 col-md-2">
                <h3 style="line-height: 50px;">进销存系统</h3>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-3 col-xs-offset-2 col-sm-offset-4 col-md-offset-7 info" style="height:100px;margin-top: 20px;" >
            <div style="margin-bottom: 10px;">
                	欢迎${loginUser.eName }登录
                <a href="javascript:void(0);" style="margin-left: 30px;color: white;" class="quit">注销</a>
            </div>
            <div class="dateText"></div>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(function(){
        clock();
        function clock(){
            var myDate = new Date();
            var year = myDate.getFullYear(); //获取当前年
            var month = myDate.getMonth() + 1; //获取当前月
            var date = myDate.getDate(); //获取当前日
            var hours = myDate.getHours(); //获得小时
            var minutes = myDate.getMinutes(); //获得分钟
            var seconds = myDate.getSeconds(); //获得秒
            month = month < 10 ? "0" + month : month;
            date = date < 10 ? "0" + date : date;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            var borrowDate = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
            $(".dateText").html("系统时间："+borrowDate);
        }
        self.setInterval(clock,1000);
        $(".quit").on("click",function(){
            window.location.href = "./quit";
        });
    });
</script>
</html>