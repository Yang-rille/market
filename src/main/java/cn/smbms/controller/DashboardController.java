package cn.smbms.controller;

import cn.smbms.pojo.SalePie;
import cn.smbms.pojo.SalePillar;
import cn.smbms.service.dashboard.DashboardService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/dashboard")
@Controller
public class DashboardController {

  @Resource
  private DashboardService dashboardService;

  @RequestMapping("/view")
  public String getView() {
    return "dashboard";
  }

  @GetMapping("/charts")
  @ResponseBody
  public Map<String, Object> madeLine() {
    List<SalePie> pies = dashboardService.getSalePie();
    List<SalePillar> pillars = dashboardService.getSalePillar();
    Map<String, Object> map = new HashMap<>();
    List<String> names = new ArrayList<>();
    List<Float> values = new ArrayList<>();
    map.put("pies", pies);
    for (SalePillar salePillar : pillars) {
      names.add(salePillar.getMonth());
      values.add(salePillar.getProfit());
    }

    map.put("names", names);
    map.put("values", values);
    return map;
  }
}
