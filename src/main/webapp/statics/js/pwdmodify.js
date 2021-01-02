var oldpassword = null;
var newpassword = null;
var renewpassword = null;
var saveBtn = null;

$(function(){
	oldpassword = $("#oldpassword");
	newpassword = $("#newpassword");
  renewpassword = $("#renewpassword");
	saveBtn = $("#save");
	
	oldpassword.next().html("*");
	newpassword.next().html("*");
  renewpassword.next().html("*");
	
	oldpassword.on("blur",function(){
		$.ajax({
			type:"GET",
			url:path+"/user/pwdmodify",
			data:{oldpassword:oldpassword.val()},
			dataType:"json",
			success:function(data){
				if(data.result === "true"){//旧密码正确
					validateTip(oldpassword.next(),{"color":"green"},imgYes,true);
				}else if(data.result === "false"){//旧密码输入不正确
					validateTip(oldpassword.next(),{"color":"red"},imgNo + " 原密码输入不正确",false);
				}else if(data.result === "sessionerror"){//当前用户session过期，请重新登录
					validateTip(oldpassword.next(),{"color":"red"},imgNo + " 当前用户session过期，请重新登录",false);
				}else if(data.result === "error"){//旧密码输入为空
					validateTip(oldpassword.next(),{"color":"red"},imgNo + " 请输入旧密码",false);
				}
			},
			error:function(data){
				//请求出错
				validateTip(oldpassword.next(),{"color":"red"},imgNo + " 请求错误",false);
			}
		});
		
		
	}).on("focus",function(){
		validateTip(oldpassword.next(),{"color":"#666666"},"* 请输入原密码",false);
	});
	
	newpassword.on("focus",function(){
		validateTip(newpassword.next(),{"color":"#666666"},"* 密码长度必须是大于6小于20",false);
	}).on("blur",function(){
		if(newpassword.val() != null && newpassword.val().length > 6
				&& newpassword.val().length < 20 ){
			validateTip(newpassword.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(newpassword.next(),{"color":"red"},imgNo + " 密码输入不符合规范，请重新输入",false);
		}
	});


  renewpassword.on("focus",function(){
		validateTip(renewpassword.next(),{"color":"#666666"},"* 请输入与上面一致的密码",false);
	}).on("blur",function(){
		if(renewpassword.val() != null && renewpassword.val().length > 6
				&& renewpassword.val().length < 20 && newpassword.val() === renewpassword.val()){
			validateTip(renewpassword.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(renewpassword.next(),{"color":"red"},imgNo + " 两次密码输入不一致，请重新输入",false);
		}
	});
	
	
	saveBtn.on("click",function(){
		oldpassword.blur();
		newpassword.blur();
    renewpassword.blur();
		if(oldpassword.attr("validateStatus") === "true"
			&& newpassword.attr("validateStatus") === "true"
			&& renewpassword.attr("validateStatus") === "true"){
			if(confirm("确定要修改密码？")){
				$("#userForm").submit();
			}
		}
		
	});
});