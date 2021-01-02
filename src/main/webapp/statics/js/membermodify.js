var memName = null;
var memPhone = null;
var saveBtn = null;
var backBtn = null;

$(function(){
  memName = $("#memName");
  memPhone = $("#memPhone");
  saveBtn = $("#save");
  backBtn = $("#back");

  //初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
  memName.next().html("*");
  memPhone.next().html("*");

  /*
   * 验证
   * 失焦\获焦
   * jquery的方法传递
   */
  memName.on("focus",function(){
    validateTip(memName.next(),{"color":"#666666"},"* 请输入会员名称",false);
  }).on("blur",function(){
    if(memName.val() != null && memName.val() !== ""){
      validateTip(memName.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(memName.next(),{"color":"red"},imgNo+" 会员名称不能为空，请重新输入",false);
    }

  });

  memPhone.on("focus",function(){
    validateTip(memPhone.next(),{"color":"#666666"},"* 请输入手机号",false);
  }).on("blur",function(){
    var patrn=/^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
    if(memPhone.val().match(patrn)){
      validateTip(memPhone.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(memPhone.next(),{"color":"red"},imgNo + " 您输入的手机号格式不正确",false);
    }
  });

  saveBtn.on("click",function(){
    memName.blur();
    memPhone.blur();
    if(memName.attr("validateStatus") == "true" &&
        memPhone.attr("validateStatus") == "true"){
      if(confirm("是否确认提交数据")){
        $("#memberForm").submit();
      }
    }
  });

  backBtn.on("click",function(){
    //alert("modify: "+referer);
    if(referer != undefined
        && null != referer
        && "" != referer
        && "null" != referer
        && referer.length > 4){
      window.location.href = referer;
    }else{
      history.back(-1);
    }
  });
});