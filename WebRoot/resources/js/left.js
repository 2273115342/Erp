$(function() {
	$(".son").hide();
	$(".parentmenu").each(function(){
		$(this).click(function(){
			if($(this).next().is(":hidden")){ //判读点击的子菜单是否显示
				$(".son").animate({height:'hide'},500);  //隐藏所有的子菜单
				//$(".parentmenu").css("background-color","rgb(34, 45, 50)"); //把所有的一级菜单背景色改为普通的
				$(".parentmenu").addClass("bg1");
				$(".parentmenu").removeClass("hoveMenu");
				$(this).addClass("hoveMenu");
				$(this).removeClass("bg1");
				//$(this).css("background-color","black"); //把点击的菜单背景色改为黑色
				$(this).next().animate({height:'show'},500); //显示点击的子菜单
			}else{
				//$(this).css("background-color","rgb(34, 45, 50)");  //如果点击的元素未显示则把背景色改为普通
				$(this).addClass("bg1");
				$(this).removeClass("hoveMenu");
				$(this).next().animate({height:'hide'},500); //隐藏当前点击的子菜单
			}
		});
	});
	$(".sonmenu").each(function() {
		$(this).on("click", function() {
			ajaxSubmit($(this).children().attr("address"),".main",null);
		});
	})
});