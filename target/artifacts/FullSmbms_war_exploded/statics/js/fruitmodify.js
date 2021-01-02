var fruitName = null;
var fruitPrice = null;
var fruitStock = null;
var saveBtn = null;
var backBtn = null;

$(function () {
  fruitName = $("#fruitName");
  fruitPrice = $("#fruitPrice");
  fruitStock = $("#fruitStock");
  saveBtn = $("#save");
  backBtn = $("#back");

  //初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
  fruitName.next().html("*");
  fruitPrice.next().html("*");
  fruitStock.next().html("*");

  /*
   * 验证
   * 失焦\获焦
   * jquery的方法传递
   */
  fruitName.on("focus", function () {
    validateTip(fruitName.next(), {"color": "#666666"}, "* 请输入商品名称", false);
  }).on("blur", function () {
    if (fruitName.val() != null && fruitName.val() !== "") {
      validateTip(fruitName.next(), {"color": "green"}, imgYes, true);
    } else {
      validateTip(fruitName.next(), {"color": "red"}, imgNo + " 商品名称不能为空，请重新输入",
          false);
    }
  });

  fruitPrice.on("focus", function () {
    validateTip(fruitPrice.next(), {"color": "#666666"}, "* 请输入商品价格", false);
  }).on("blur", function () {
    if (fruitPrice.val() != null && fruitPrice.val() !== "") {
      validateTip(fruitPrice.next(), {"color": "green"}, imgYes, true);
    } else {
      validateTip(fruitPrice.next(), {"color": "red"},
          imgNo + " 商品价格不能为空，请重新输入", false);
    }
  });

  fruitStock.on("focus", function () {
    validateTip(fruitStock.next(), {"color": "#666666"}, "* 请输入商品库存", false);
  }).on("blur", function () {
    if (fruitStock.val() != null && fruitStock.val() !== "") {
      validateTip(fruitStock.next(), {"color": "green"}, imgYes, true);
    } else {
      validateTip(fruitStock.next(), {"color": "red"},
          imgNo + " 商品库存不能为空，请重新输入", false);
    }
  });

  saveBtn.on("click", function () {
    fruitName.blur();
    fruitPrice.blur();
    fruitStock.blur();
    if (fruitName.attr("validateStatus") === "true" &&
        fruitPrice.attr("validateStatus") === "true" &&
        fruitStock.attr("validateStatus") === "true"
    ) {
      if (confirm("是否确认提交数据")) {
        $("#memberForm").submit();
      }
    }
  });

  backBtn.on("click", function () {
    //alert("modify: "+referer);
    if (referer != undefined
        && null != referer
        && "" != referer
        && "null" != referer
        && referer.length > 4) {
      window.location.href = referer;
    } else {
      history.back(-1);
    }
  });
});