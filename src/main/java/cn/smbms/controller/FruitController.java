package cn.smbms.controller;

import cn.smbms.pojo.Fruit;
import cn.smbms.pojo.User;
import cn.smbms.service.fruit.FruitService;
import cn.smbms.tools.Constants;
import com.alibaba.fastjson.JSONArray;
import com.mysql.cj.util.StringUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/fruit")
public class FruitController {

  @Resource
  private FruitService fruitService;

  @RequestMapping("/query")
  public String query(Model model, String queryFruitName) {
    if (StringUtils.isNullOrEmpty(queryFruitName)) {
      queryFruitName = "";
    }
    List<Fruit> fruitList = fruitService.getFruitList(queryFruitName);
    model.addAttribute("fruitList", fruitList);
    model.addAttribute("queryFruitName", queryFruitName);
    return "fruitlist";
  }

  @RequestMapping("/userAdd")
  public String userAdd() {
    return "fruitadd";
  }

  /**
   * 添加
   */
  @RequestMapping(value = "/add", method = RequestMethod.POST)
  public String add(HttpServletRequest request, Fruit fruit) {
    fruit.setCreatedBy(((User) request.getSession().getAttribute(Constants.USER_SESSION)).getId());
    fruit.setCreationDate(new Date());
    boolean flag;
    flag = fruitService.add(fruit);
    if (flag) {
      return "redirect:query";
    } else {
      return "fruitadd";
    }
  }

  @RequestMapping("/fruitById/{url}/{fruitId}")
  public String lookAndUpdate(Model model, @PathVariable String url, @PathVariable String fruitId) {

    if (!StringUtils.isNullOrEmpty(fruitId)) {
      Fruit fruit = fruitService.getFruitById(fruitId);
      model.addAttribute("fruit", fruit);
      return url;
    }
    return null;
  }


  @RequestMapping(value = "/delFruit/{fruitId}", method = RequestMethod.DELETE)
  @ResponseBody
  public String delFruit(@PathVariable String fruitId) {
    HashMap<String, String> resultMap = new HashMap<>();
    if (!StringUtils.isNullOrEmpty(fruitId)) {
      int flag = fruitService.deleteFruitById(fruitId);
      if (flag == 0) {//删除成功
        resultMap.put("delResult", "true");
      } else if (flag == -1) {//删除失败
        resultMap.put("delResult", "false");
      }
    } else {
      resultMap.put("delResult", "notexit");
    }
    return JSONArray.toJSONString(resultMap);
  }

  @RequestMapping(value = "/modifysave", method = RequestMethod.POST)
  public String modify(HttpServletRequest request, Fruit fruit) {
    boolean flag;
    fruit.setModifyBy(((User) request.getSession().getAttribute(Constants.USER_SESSION)).getId());
    fruit.setModifyDate(new Date());
    flag = fruitService.modify(fruit);
    if (flag) {
      return "redirect:query";
    } else {
      return "membermodify";
    }
  }
}
