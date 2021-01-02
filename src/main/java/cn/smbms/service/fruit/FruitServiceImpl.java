package cn.smbms.service.fruit;

import cn.smbms.dao.fruit.FruitDao;
import cn.smbms.pojo.Fruit;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class FruitServiceImpl implements FruitService {

  @Resource
  private FruitDao fruitDao;

  @Override
  public List<Fruit> getFruitList(String queryFruitName) {
    List<Fruit> fruitList = null;
    System.out.println("query fruitName ---- > " + queryFruitName);
    try {
      fruitList = fruitDao.getFruitList(queryFruitName);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return fruitList;
  }

  @Override
  public boolean add(Fruit fruit) {
    boolean flag = false;
    try {
      if (fruitDao.add(fruit) > 0) {
        flag = true;
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return flag;
  }

  @Override
  public int deleteFruitById(String delId) {
    int flag = 0;
    try {
      fruitDao.deleteFruitById(delId);
    } catch (Exception e) {
      e.printStackTrace();
      flag = -1;
    }
    return flag;
  }

  @Override
  public Fruit getFruitById(String fruitId) {
    Fruit fruit = null;
    try {
      fruit = fruitDao.getFruitById(fruitId);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return fruit;
  }

  public boolean modify(Fruit fruit) {
    boolean flag = false;
    try {
      if (fruitDao.modify(fruit) > 0) {
        flag = true;
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return flag;
  }
}
