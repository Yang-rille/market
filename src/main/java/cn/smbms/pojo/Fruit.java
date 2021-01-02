package cn.smbms.pojo;

import java.util.Date;

public class Fruit {
  private Integer id;   //id
  private String fruitCode;
  private String fruitName; //水果名称
  private Float fruitPrice;
  private String fruitDesc; //水果描述
  private Integer fruitStock; //水果库存
  private Integer createdBy; //创建者

  public Integer getModifyBy() {
    return modifyBy;
  }

  public void setModifyBy(Integer modifyBy) {
    this.modifyBy = modifyBy;
  }

  public Date getModifyDate() {
    return modifyDate;
  }

  public void setModifyDate(Date modifyDate) {
    this.modifyDate = modifyDate;
  }

  private Date creationDate; //创建时间
  private Integer modifyBy;
  private Date modifyDate;

  public Integer getId() {
    return id;
  }

  public String getFruitName() {
    return fruitName;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public void setFruitName(String fruitName) {
    this.fruitName = fruitName;
  }

  public void setFruitPrice(Float fruitPrice) {
    this.fruitPrice = fruitPrice;
  }

  public void setFruitDesc(String fruitDesc) {
    this.fruitDesc = fruitDesc;
  }

  public void setFruitStock(Integer fruitStock) {
    this.fruitStock = fruitStock;
  }

  public void setCreatedBy(Integer createdBy) {
    this.createdBy = createdBy;
  }

  public void setCreationDate(Date creationDate) {
    this.creationDate = creationDate;
  }

  public Float getFruitPrice() {
    return fruitPrice;
  }

  public String getFruitDesc() {
    return fruitDesc;
  }

  public Integer getFruitStock() {
    return fruitStock;
  }

  public Integer getCreatedBy() {
    return createdBy;
  }

  public Date getCreationDate() {
    return creationDate;
  }


  public String getFruitCode() {
    return fruitCode;
  }

  public void setFruitCode(String fruitCode) {
    this.fruitCode = fruitCode;
  }
}
