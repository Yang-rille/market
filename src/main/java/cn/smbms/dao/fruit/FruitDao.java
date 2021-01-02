package cn.smbms.dao.fruit;

import cn.smbms.pojo.Fruit;
import java.util.List;

public interface FruitDao {

  List<Fruit> getFruitList(String fruitName) throws Exception;

  int add(Fruit fruit)throws Exception;

  void deleteFruitById(String delId)throws Exception;

  Fruit getFruitById(String fruitId) throws Exception;

  int modify(Fruit fruit)throws Exception;
}
