$(function() {
	$(".bg").each(function(){
		$(this).click(function(){
			if($(this).attr("isexpand")=="false"){  //如果二级菜单未被展开，则展开对应二级菜单
				$(this).css("background-position","0px -23px");  //改变背景图片的位移  图片显示为收缩
				$(this).attr("isexpand","true");  //把标识变为true  已展开
				$(this).parent().next().show();  //显示二级菜单
			}else{
				$(this).css("background-position","0px 0px");  //改变背景图片的位移  图片显示为展开
				$(this).attr("isexpand","false");  //把标识变为true  为展开
				$(this).parent().next().hide();  //隐藏二级菜单
			}
		});
	})
	var removeMenuIdList = new Array(); //要删除的菜单id数组
	var addMenuIdList = new Array();  //要增加的菜单id数组
	$("input[type='checkbox']").change(function() {  //当复选框发生改变时
		if($(this).attr("ishave")=="true"){  //是否拥有此菜单
			//删除拥有的菜单
			if($.inArray($(this).val(),removeMenuIdList)==-1){ //判断当前的菜单id是否存在于数组中   不存在返回-1
				//如果改变的菜单id不存在于删除的数组，则增加该元素
				removeMenuIdList.push($(this).val());
				$(this).next().css("color","red");
			}else{
				//如果改变的菜单id已存在于删除的数组，则删除该元素
				removeMenuIdList.removeByValue($(this).val());
				$(this).next().css("color","black");
			}
		}else{
			//增加未拥有的菜单
			if($.inArray($(this).val(),addMenuIdList)==-1){  //判断当前的菜单id是否存在于数组中  不存在返回-1
				//如果改变的菜单id不存在于增加的数组，则增加该元素
				addMenuIdList.push($(this).val());
				$(this).next().css("color","red");
			}else{
				//如果改变的菜单id已存在于增加的数组，则删除该元素
				addMenuIdList.removeByValue($(this).val());
				$(this).next().css("color","black");
			}
		}
	});
	$(".roleMenuAlert").click(function(){
		if(removeMenuIdList.length <= 0 &&addMenuIdList <=0 ){
			return false;
		}
		var data = {roleId : $(".roleId").attr("roleId") ,
				"removeMenuIdList" : removeMenuIdList,"addMenuIdList" : addMenuIdList}
		ajaxSubmit("roleMenu/updateRoleMenu",".modal-body",data);
		//$(".modal-backdrop").hide();  //隐藏遮障窗口
	});
});