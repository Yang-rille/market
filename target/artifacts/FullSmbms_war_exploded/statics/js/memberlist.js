var memberObj;

//会员管理页面上点击删除按钮弹出删除框(memberlist.jsp)
function deleteMember(obj){
  $.ajax({
    type:"GET",
    url:path+"/member/delMember",
    data:{memid:obj.attr("memid")},
    dataType:"json",
    success:function(data){
      if(data.delResult == "true"){//删除成功：移除删除行
        cancleBtn();
        obj.parents("tr").remove();
      }else if(data.delResult == "false"){//删除失败
        //alert("对不起，删除会员【"+obj.attr("memname")+"】失败");
        changeDLGContent("对不起，删除会员【"+obj.attr("memname")+"】失败");
      }else if(data.delResult == "notexist"){
        //alert("对不起，会员【"+obj.attr("memname")+"】不存在");
        changeDLGContent("对不起，会员【"+obj.attr("memname")+"】不存在");
      }else{
        //alert("对不起，该会员【"+obj.attr("memname")+"】下有【"+data.delResult+"】条订单，不能删除");
        changeDLGContent("对不起，该会员【"+obj.attr("memname")+"】下有【"+data.delResult+"】条订单，不能删除");
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
  $('#removeMem').fadeIn();
}

function cancleBtn(){
  $('.zhezhao').css('display', 'none');
  $('#removeMem').fadeOut();
}
function changeDLGContent(contentStr){
  var p = $(".removeMain").find("p");
  p.html(contentStr);
}
$(function(){
  $(".viewMember").on("click",function(){
    //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
    var obj = $(this);
    window.location.href=path+"/member/memberById/memberview/"+ obj.attr("memid");
  });

  $(".modifyMember").on("click",function(){
    var obj = $(this);
    window.location.href=path+"/member/memberById/membermodify/"+ obj.attr("memid");
  });

  $('#no').click(function () {
    cancleBtn();
  });

  $('#yes').click(function () {
    deleteMember(memberObj);
  });

  $(".deleteMember").on("click",function(){
    memberObj = $(this);
    changeDLGContent("你确定要删除会员【"+memberObj.attr("memname")+"】吗？");
    openYesOrNoDLG();
  });
});