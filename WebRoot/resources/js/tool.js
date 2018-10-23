/**
 * ajax方式提交
 * @param url 提交到的url
 * @param id 改变内容的id
 * @param date  提交的数据
 */
function ajaxSubmit(url,id,date){
	$.ajax({
        url:url,
        dataType:"html",
        data: date,
        type: "post",
        beforeSend: function(){
            $(id).append("<img class='lodingImg' src='./resources/img/ajax_loading.gif' width='50' height='50' style='position: fixed;top: 43%;left:51%;z-index: 100;'/>");
        },
        success:function(result){
        	/*console.log(result);*/
            $(id).html(result);
        },
        error:function(XMLHttpRequest, textStatus, errorThrown){
            $(".lodingImg").remove();
        },
    });
}

/**
 * 校验文本框的值是否为空
 * @param id 校验文本框的id
 * @param text  如果为空，提示的内容
 * @returns {boolean} 为空返回true.不为空返回false
 */
function checkInput(id,text){
    if($(id).val()!=null&&$(id).val().trim().length<=0){
        popUpMessage("body",text,3000,30,45,false);
        $(id).parent().addClass("has-error");
        $(id).focus();
        return true;
    }else{
        $(id).parent().removeClass("has-error");
        return false;
    }
}

/**
 * 在指定的元素后添加一个提示框信息,
 * @param afterWhatAddId 在哪个元素后添加
 * @param promptMessage  提示的信息
 * @param displayTime 要显示的时长(毫秒为单位)
 * @param top 距离浏览器上边距离(%为单位)
 * @param left 距离浏览器左边距离(%为单位)
 * @param father (true or false)是不是在子页面控制父页面
 */
function popUpMessage(afterWhatAddId,promptMessage,displayTime,top,left,ishavefather){
	$('.pagetoomush').stop(true,true); //停止前面的动画
	if(ishavefather){  //子iframe调用父iframe
		$(afterWhatAddId).after("<div class='pagetoomush' style='position: fixed;top:"+top+"%;left: "+left+"%;" +
			"color:red;background-color: white;border: 1px solid #CCC;padding:40px 80px;font-size: 16px;z-index: 9999'>"+promptMessage+"</div>");
		$(".pagetoomush",parent.document).animate({
			opacity:'0',
			top:'0%',
		},displayTime,function(){
			$(this).remove();
		});
	}else{
		$(afterWhatAddId).after("<div class='pagetoomush' style='position: fixed;top:"+top+"%;left: "+left+"%;" +
			"color:red;background-color: white;border: 1px solid #CCC;padding:40px 80px;font-size: 16px;z-index: 9999;'>"+promptMessage+"</div>");
		$(".pagetoomush").animate({
			opacity:'0',
			top:'0%',
		},displayTime,function(){
			$(this).remove();
		});
	}
}

/**
 * 给Array新增一个名为removeByValue方法
 * 如果传入的值在该数组中存在
 * 则会删除该值在数组中第一次出现位置的元素
 * @param val 指定的值
 */
Array.prototype.removeByValue = function(val) {
    for(var i=0; i<this.length; i++) {
        if(this[i] == val) {
            this.splice(i, 1);
            break;
        }
    }
};