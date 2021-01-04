package cn.smbms.dao.bill;

import cn.smbms.pojo.SalePie;
import java.util.Date;
import java.util.List;

import cn.smbms.pojo.Bill;
import org.apache.ibatis.annotations.Param;

public interface BillDao {
	/**
	 * 增加订单
	 * @param bill
	 * @return
	 * @throws Exception
	 */
	public int add(Bill bill)throws Exception;


	/**
	 * 通过查询条件获取供应商列表-模糊查询-getBillList
	 * @param bill
	 * @return
	 * @throws Exception
	 */
	public List<Bill> getBillList(Bill bill)throws Exception;
	
	/**
	 * 通过delId删除Bill
	 * @param delId
	 * @return
	 * @throws Exception
	 */
	public int deleteBillById(String delId)throws Exception;
	
	
	/**
	 * 通过billId获取Bill
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Bill getBillById(String id)throws Exception;
	
	/**
	 * 修改订单信息
	 * @param bill
	 * @return
	 * @throws Exception
	 */
	public int modify(Bill bill)throws Exception;

	/**
	 * 根据会员ID查询订单数量
	 */
	public int getBillCountByMemberId(String memberId)throws Exception;

	Float getBillByTime(@Param("start") Date start, @Param("end") Date end);

	List<SalePie> getTop5Fruit();

}
