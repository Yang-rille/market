package cn.smbms.controller;

import cn.smbms.pojo.Member;
import cn.smbms.service.member.MemberService;
import com.alibaba.fastjson.JSONArray;
import com.mysql.cj.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Resource
  private MemberService memberService;
  /**
   * 会员管理
   */
  @RequestMapping("/query")
  public String query(Model model, String queryMemName, String queryMemCode){
    if(StringUtils.isNullOrEmpty(queryMemName)){
      queryMemName = "";
    }
    if(StringUtils.isNullOrEmpty(queryMemCode)){
      queryMemCode = "";
    }
    List<Member> memberList = memberService.getMemberList(queryMemName,queryMemCode);
    model.addAttribute("memberList", memberList);
    model.addAttribute("queryMemName", queryMemName);
    model.addAttribute("queryMemCode", queryMemCode);
    return "memberlist";
  }

  /**
   * 跳转到添加页面
   */
  @RequestMapping("/userAdd")
  public String userAdd(){
    return "memberadd";
  }

  /**
   * 添加
   */
  @RequestMapping(value = "/add",method = RequestMethod.POST)
  public String add(Member member){
    member.setCreationDate(new Date());
    boolean flag;
    flag = memberService.add(member);
    if(flag){
      return "redirect:query";
    }else{
      return "memberadd";
    }
  }

  @RequestMapping("/memberById/{url}/{memid}")
  public String lookAndUpdate(Model model, @PathVariable String url,@PathVariable String memid){
    System.out.println(url);
    if(!StringUtils.isNullOrEmpty(memid)){
      Member member;
      member = memberService.getMemberById(memid);
      model.addAttribute("member", member);
      return url;
    }
    return null;
  }

  /**
   * 删除会员
   */
  @RequestMapping(value = "/delMember")
  @ResponseBody
  public String delMember(String memid){
    HashMap<String, String> resultMap = new HashMap<>();
    if(!StringUtils.isNullOrEmpty(memid)){
      int flag = memberService.deleteMemberById(memid);
      if(flag == 0){//删除成功
        resultMap.put("delResult", "true");
      }else if(flag == -1){//删除失败
        resultMap.put("delResult", "false");
      }else if(flag > 0){//该会员下有订单，不能删除，返回订单数
        resultMap.put("delResult", String.valueOf(flag));
      }
    }else{
      resultMap.put("delResult", "notexit");
    }
    System.out.println(resultMap.get("delResult"));
    return JSONArray.toJSONString(resultMap);
  }

  /**
   * 修改会员
   */
  @RequestMapping(value = "/modifysave",method = RequestMethod.POST)
  public String modify(Member member){
    member.setModifyDate(new Date());
    boolean flag;
    flag = memberService.modify(member);
    if(flag){
      return "redirect:query";
    }else{
      return "membermodify";
    }
  }
}
