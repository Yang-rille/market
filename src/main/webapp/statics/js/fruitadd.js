var fruitCode = null;
var fruitName = null;
var fruitPrice = null;
var fruitStock = null;
var addBtn = null;
var backBtn = null;

$(function(){
  fruitCode = $("#fruitCode");
  fruitName = $("#fruitName");
  fruitPrice = $("#fruitPrice");
  fruitStock = $("#fruitStock");
  addBtn = $("#add");
  backBtn = $("#back");
  //初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
  fruitCode.next().html("*");
  fruitName.next().html("*");
  fruitPrice.next().html("*");
  fruitStock.next().html("*");

  /*
   * 验证
   * 失焦\获焦
   * jquery的方法传递
   */
  fruitCode.on("blur",function(){
    if(fruitCode.val() != null && fruitCode.val() !== ""){
      validateTip(fruitCode.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(fruitCode.next(),{"color":"red"},imgNo+" 编码不能为空，请重新输入",false);
    }
  }).on("focus",function(){
    //显示友情提示
    validateTip(fruitCode.next(),{"color":"#666666"},"* 请输入商品编码",false);
  }).focus();

  fruitName.on("focus",function(){
    validateTip(fruitName.next(),{"color":"#666666"},"* 请输入商品名称",false);
  }).on("blur",function(){
    if(fruitName.val() != null && fruitName.val() !== ""){
      validateTip(fruitName.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(fruitName.next(),{"color":"red"},imgNo+" 商品名称不能为空，请重新输入",false);
    }

  });

  fruitPrice.on("focus",function(){
    validateTip(fruitPrice.next(),{"color":"#666666"},"* 请输入商品价格",false);
  }).on("blur",function(){
    if(fruitPrice.val() != null && fruitPrice.val() !== ""){
      validateTip(fruitPrice.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(fruitPrice.next(),{"color":"red"},imgNo+" 商品价格不能为空，请重新输入",false);
    }

  });

  fruitStock.on("focus",function(){
    validateTip(fruitStock.next(),{"color":"#666666"},"* 请输入商品数量",false);
  }).on("blur",function(){
    if(fruitStock.val() != null && fruitStock.val() !== ""){
      validateTip(fruitStock.next(),{"color":"green"},imgYes,true);
    }else{
      validateTip(fruitStock.next(),{"color":"red"},imgNo+" 商品数量不能为空，请重新输入",false);
    }

  });

  addBtn.bind("click",function(){
    if(fruitCode.attr("validateStatus") !== "true"){
      fruitCode.blur();
    }else if(fruitName.attr("validateStatus") !== "true"){
      fruitName.blur();
    }else if(fruitPrice.attr("validateStatus") !== "true"){
      fruitPrice.blur();
    }else if(fruitStock.attr("validateStatus") !== "true"){
      fruitStock.blur();
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