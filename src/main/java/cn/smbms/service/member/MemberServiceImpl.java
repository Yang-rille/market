package cn.smbms.service.member;

import cn.smbms.dao.bill.BillDao;
import cn.smbms.dao.member.MemberDao;
import cn.smbms.pojo.Member;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Transactional
@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberDao memberDao;
	@Resource
	private BillDao  billDao;
	@Override
	public boolean add(Member member) {
		boolean flag = false;
		try {
			if(memberDao.add(member) > 0)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public List<Member> getMemberList(String memName,String memCode) {
		List<Member> memberList = null;
		System.out.println("query memName ---- > " + memName);
		System.out.println("query memCode ---- > " + memCode);
		try {
      memberList = memberDao.getMemberList(memName,memCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}

	/**
	 * 业务：根据ID删除会员表的数据之前，需要先去订单表里进行查询操作
	 * 若订单表中无该会员的订单数据，则可以删除
	 * 若有该会员的订单数据，则不可以删除
	 * 返回值billCount
	 * 1> billCount == 0  删除---1 成功 （0） 2 不成功 （-1）
	 * 2> billCount > 0    不能删除 查询成功（0）查询不成功（-1）
	 * 
	 * ---判断
	 * 如果billCount = -1 失败
	 * 若billCount >= 0 成功
	 */
	@Override
	public int deleteMemberById(String delId) {
		int billCount;
		try {
			billCount = billDao.getBillCountByMemberId(delId);
			if(billCount == 0){
				memberDao.deleteMemberById(delId);
			}
		} catch (Exception e) {
			e.printStackTrace();
			billCount = -1;
		}
		return billCount;
	}

	@Override
	public Member getMemberById(String id) {
    Member member = null;
		try{
			member = memberDao.getMemberById(id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}

	@Override
	public boolean modify(Member member) {
		boolean flag = false;
		try {
			if(memberDao.modify(member) > 0)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

}
