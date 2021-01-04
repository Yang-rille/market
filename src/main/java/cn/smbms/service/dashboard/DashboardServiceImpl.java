package cn.smbms.service.dashboard;

import cn.smbms.dao.bill.BillDao;
import cn.smbms.pojo.SalePie;
import cn.smbms.pojo.SalePillar;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service
public class DashboardServiceImpl implements DashboardService {

  @Resource
  private BillDao billDao;

  @Override
  public List<SalePie> getSalePie() {
    return billDao.getTop5Fruit();
  }

  @Override
  public List<SalePillar> getSalePillar() {
    List<SalePillar> list = new ArrayList<>();
    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM");
    //设置startDate
    Calendar c = Calendar.getInstance();
    //设置endDate
    Calendar c2 = Calendar.getInstance();
    for (int i = 0; i < 12; i++) {
      SalePillar salePillar = new SalePillar();
      c.set(Calendar.DAY_OF_MONTH,1);
      c.set(c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
      Date start = c.getTime();
      salePillar.setMonth(format.format(start));
      //将c 设置为下个月
      c.add(Calendar.DATE, -1);

      c2.set(Calendar.DAY_OF_MONTH,1);
      //设置时间 23时59分59秒
      c2.set(c2.get(Calendar.YEAR), c2.get(Calendar.MONTH), c2.get(Calendar.DAY_OF_MONTH), 23, 59, 59);
      c2.add(Calendar.MONTH, 1);
      c2.set(Calendar.DAY_OF_MONTH, 0);
      Date end = c2.getTime();
      c2.add(Calendar.MONTH, -1);
      c2.set(c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH));
      Float total = billDao.getBillByTime(start, end);
      float result = total == null ? 0 : total;
      salePillar.setProfit(result);
      list.add(salePillar);
    }
    return list;
  }
}
