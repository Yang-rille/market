var fruitObj;


function deleteFruit(obj){
  $.ajax({
    type:"DELETE",
    url:path+"/fruit/delFruit/" + obj.attr("fruitId"),
    // data:{fruitId:obj.attr("fruitId")},
    dataType:"json",
    success:function(data){
      console.log(data.delResult)
      if(data.delResult == "true"){//删除成功：移除删除行
        cancleBtn();
        obj.parents("tr").remove();
      }else if(data.delResult == "false"){//删除失败
        changeDLGContent("对不起，删除商品【"+obj.attr("fruitName")+"】失败");
      }else if(data.delResult == "notexist"){
        changeDLGContent("对不起，商品【"+obj.attr("fruitName")+"】不存在");
      }
    },
    error:function(data){
      //alert("对不起，删除失败");
      changeDLGContent("对不起，删除失败");
    }
  });
}

function openYesOrNoDLG(){
  $('.zhezhao').css('display', 'block');
  $('#removeFruit').fadeIn();
}

function cancleBtn(){
  $('.zhezhao').css('display', 'none');
  $('#removeFruit').fadeOut();
}
function changeDLGContent(contentStr){
  var p = $(".removeMain").find("p");
  p.html(contentStr);
}
$(function(){
  $(".viewFruit").on("click",function(){
    //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
    var obj = $(this);
    window.location.href=path+"/fruit/fruitById/fruitview/"+ obj.attr("fruitId");
  });

  $(".modifyFruit").on("click",function(){
    var obj = $(this);
    window.location.href=path+"/fruit/fruitById/fruitmodify/"+ obj.attr("fruitId");
  });

  $('#no').click(function () {
    cancleBtn();
  });

  $('#yes').click(function () {
    deleteFruit(fruitObj);
  });

  $(".deleteFruit").on("click",function(){
    fruitObj = $(this);
    changeDLGContent("你确定要删除商品【"+fruitObj.attr("fruitName")+"】吗？");
    openYesOrNoDLG();
  });
});