package cn.smbms.service.member;

import cn.smbms.pojo.Member;
import java.util.List;

public interface MemberService {
	/**
	 * 增加会员
	 */
	public boolean add(Member member);


	/**
	 * 通过会员名称、编码获取会员列表-模糊查询
	 */
	public List<Member> getMemberList(String memName, String memCode);
	
	/**
	 * 通过proId删除Member
	 */
	public int deleteMemberById(String delId);
	
	
	/**
	 * 通过proId获取Member
	 * @param id
	 * @return
	 */
	public Member getMemberById(String id);
	
	/**
	 * 修改用户信息
	 */
	public boolean modify(Member member);
	
}
