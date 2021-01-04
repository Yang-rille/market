package cn.smbms.service.dashboard;

import cn.smbms.pojo.SalePie;
import cn.smbms.pojo.SalePillar;
import java.util.List;

public interface DashboardService {

  List<SalePie> getSalePie();

  List<SalePillar> getSalePillar();

}
