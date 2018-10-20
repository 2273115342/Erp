$(function(){
    var code = "";  //4位验证码
    createCode(); //初始化验证码

    //登录点击的响应
    $(".login").on("click",function(){
        if(checkInput(".accountNumber","账号不能为空")) return false; //校验账号
        if(checkInput(".password","密码不能为空")) return false; //校验密码
        if(checkInput(".identifyingCode","验证码不能为空")) return false;  //校验验证码
        if($(".identifyingCode").val().trim() != null && $(".identifyingCode").val().trim() != "" &&
            $(".identifyingCode").val().trim().toUpperCase() == code.toUpperCase()){
            return true;
        }else{
            popUpMessage("body","验证码错误",3000,30,45,false);
            $(".identifyingCode").focus();  //让验证码框得到焦点
            changeCode();  //更换验证码
            return false;
        }
    });

    //注册点击的响应
    $(".addUser").click(function(){
        ajaxSubmit("user/add", ".modal-body", null);  //弹出注册界面
    });

    //小行星重复动画
    setInterval(function() {
        var beginX = Math.random() * 150 - 50; //初始x轴
        var op = Math.random() * 0.3 + 0.7;  //初始透明度
        $("body").append("<img class='lx' src='./resources/img/asteroid.png' width='250' height='250' style='z-index: 2;opacity:" + op + ";position: absolute;top:-300;left:" + beginX + "%' >");
        var lastX = beginX + 48;  //末尾x轴
        var lastY = Math.random() * 50 + 30;  //末尾y轴
        $(".lx").animate({
            top: lastY + '%',
            left: lastX + '%',
            opacity: 0,

        }, 3000, function () {
            $(this).remove();  //动画结束后删除
        });
    },1000);


    $("#myCanvas").on("click",function(){
        changeCode();
    });

    /**
     * 更换验证码
     */
    function changeCode(){
        code = "";
        createCode();
    }

    /**
     * 创建验证码
     */
    function createCode() {
        var randomList = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z');
        var c=document.getElementById("myCanvas");
        var ctx=c.getContext("2d");

        var bgcolorList = new Array("rgb(189,168,121)","rgb(80,188,203)","rgb(84,164,139)","rgb(153,96,127)",
            "rgb(25,102,171)","rgb(123,215,224)","rgb(113,162,194)","rgb(37,173,184)","rgb(185,203,172)",
            "rgb(160,113,9)","rgb(165,190,106)","rgb(152,53,18)","rgb(44,53,150)","rgb(44,114,212)","rgb(192,191,149)");
        ctx.fillStyle= bgcolorList[Math.floor(Math.random()*bgcolorList.length)];  //随机背景色颜色
        ctx.fillRect(0,0,150,34);  //矩形（背景色的填充地方）

        for(var i =  0; i < 4 ; i++){  //生成4个验证码
            ctx.font ="bold "+Math.floor(Math.random()*5+24) +"px Arial";  //随机字体大小  设置字体
            ctx.fillStyle = randomColor();  //随机字体颜色
            var deg = 20-i*5;
            ctx.rotate(deg*Math.PI/180);  //随机倾斜度
            var singleCode = randomList[Math.floor(Math.random()*randomList.length)];  //单个随机验证码
            var singleCodeY = Math.floor(Math.random()*10+15); //单个随机验证码的y轴
            var singleCodeX = 10+i*30;  //单个随机验证码的x轴
            ctx.fillText(singleCode,singleCodeX,singleCodeY);  //生成单个随机验证码
            code += singleCode;  //拼接到整体验证码
            ctx.rotate(-deg*Math.PI/180);  //复原随机倾斜度
        };

        for(var i =  0; i < 4 ; i++){  //生成4条干扰曲线线
            ctx.beginPath();
            ctx.moveTo(Math.floor(Math.random()*150),Math.floor(Math.random()*20+10));
            ctx.quadraticCurveTo(Math.floor(Math.random()*100),Math.floor(Math.random()*30),
                Math.floor(Math.random()*100+50),Math.floor(Math.random()*100-50));
            ctx.stroke();
        }


        for(var i =  0; i < 100 ; i++) {  //生成100个干扰点
            ctx.beginPath();
            ctx.arc(Math.floor(Math.random()*114+1),Math.floor(Math.random()*29+1),1,4,2*Math.PI);
            ctx.stroke();
        }
    }

    /**
     * 得到随机的颜色值
     */
    function randomColor() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
});