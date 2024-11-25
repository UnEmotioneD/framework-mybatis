package kr.or.iei.member.model.service;

import org.apache.ibatis.session.SqlSession;

import kr.or.iei.common.SqlSessionTemplate;
import kr.or.iei.member.model.dao.MemberDao;
import kr.or.iei.member.model.vo.Member;

public class MemberService {

	private MemberDao dao;

	public MemberService() {
		super();
		dao = new MemberDao();
	}

	public Member selectOneMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqsession();
		Member loginMember = dao.selectOneMember(session, member);
		session.close();
		return loginMember;
	}

}
