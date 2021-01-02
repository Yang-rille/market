package cn.smbms.dao.member;

import cn.smbms.pojo.Member;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MemberDao {
	
	/**
	 * 增加会员
	 */
	public int add(Member member)throws Exception;


	/**
	 * 通过会员名称、编码获取会员列表-模糊查询-MemberList
	 */
	public List<Member> getMemberList(@Param("memName") String memName,@Param("memCode") String memCode)throws Exception;
	
	/**
	 * 通过memId删除Member
	 */
	public int deleteMemberById(String delId)throws Exception;
	
	
	/**
	 * 通过memId获取Member
	 */
	public Member getMemberById(String id)throws Exception;
	
	/**
	 * 修改用户信息
	 */
	public int modify(Member member)throws Exception;
	
	
}
