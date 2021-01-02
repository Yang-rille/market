var memCode = null;
var memName = null;
var memAddress = null;
var memPhone = null;
var addBtn = null;
var backBtn = null;

$(function(){
  memCode = $("#memCode");
  memName = $("#memName");
  memAddress = $("#memAddress");
  memPhone = $("#memPhone");
  addBtn = $("#add");
  backBtn = $("#back");
  //初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
  memCode.next().html("*");
  memName.next().html("*");
  memAddress.next().html("*");
  memPhone.next().html("*");

  /*
   * 验证
   * 失焦\获焦
   * jquery的方法传递
   */
  memCode.on("blur",function(){
    if(memCode.val() != null && memCode.val() !== ""){
      validateTip(memCode.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(memCode.next(),{"color":"red"},imgNo+" 编码不能为空，请重新输入",false);
    }
  }).on("focus",function(){
    //显示友情提示
    validateTip(memCode.next(),{"color":"#666666"},"* 请输入会员编码",false);
  }).focus();

  memName.on("focus",function(){
    validateTip(memName.next(),{"color":"#666666"},"* 请输入会员名称",false);
  }).on("blur",function(){
    if(memName.val() != null && memName.val() != ""){
      validateTip(memName.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(memName.next(),{"color":"red"},imgNo+" 会员名称不能为空，请重新输入",false);
    }

  });

  memAddress.on("focus",function(){
    validateTip(memAddress.next(),{"color":"#666666"},"* 请输入会员住址",false);
  }).on("blur",function(){
    if(memAddress.val() != null && memAddress.val() !== ""){
      validateTip(memAddress.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(memAddress.next(),{"color":"red"},imgNo+" 会员住址不能为空，请重新输入",false);
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

  addBtn.bind("click",function(){
    if(memCode.attr("validateStatus") !== "true"){
      memCode.blur();
    }else if(memName.attr("validateStatus") !== "true"){
      memName.blur();
    }else if(memAddress.attr("validateStatus") !== "true"){
      memAddress.blur();
    }else if(memPhone.attr("validateStatus") !== "true"){
      memPhone.blur();
    }else{
      if(confirm("是否确认提交数据")){
        $("#memberForm").submit();
      }
    }
  });

  backBtn.on("click",function(){
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