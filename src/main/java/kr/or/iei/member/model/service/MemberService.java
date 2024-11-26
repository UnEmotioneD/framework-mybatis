package kr.or.iei.member.model.service;

import java.util.ArrayList;

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
		SqlSession session = SqlSessionTemplate.getSqlsession();
		Member loginMember = dao.selectOneMember(session, member);
		session.close();
		return loginMember;
	}

	public int insertMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlsession();
		int result = dao.insertMember(session, member);

		if (result > 0) {
			session.commit();
		} else {
			// 하나만 할 경우에는 rollback 하지 않아도 된다
			session.rollback();
		}

		session.close();
		return result;
	}

	public ArrayList<Member> selectAllMember() {
		SqlSession session = SqlSessionTemplate.getSqlsession();
		// Down casting
		ArrayList<Member> memberList = (ArrayList<Member>) dao.selectAllMember(session);
		session.close();
		return memberList;
	}

	public int updateMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlsession();
		int result = dao.updateMember(session, member);

		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		session.close();
		return result;
	}

	public int deleteMember(String memberNo) {
		SqlSession session = SqlSessionTemplate.getSqlsession();
		int result = dao.deleteMember(session, memberNo);

		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}

		session.close();
		return result;
	}

}
