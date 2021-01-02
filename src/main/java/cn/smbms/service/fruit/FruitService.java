package cn.smbms.service.fruit;

import cn.smbms.pojo.Fruit;
import java.util.List;

public interface FruitService {

  List<Fruit> getFruitList(String queryFruitName);

  boolean add(Fruit fruit);

  int deleteFruitById(String delId);

  Fruit getFruitById(String fruitId);

  boolean modify(Fruit fruit);
}
