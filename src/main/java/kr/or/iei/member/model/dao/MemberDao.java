package kr.or.iei.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.iei.member.model.vo.Member;

public class MemberDao {
	// 여러개의 mapper.xml 생성 가능하므로 mapper 파일을 구분할 값과
	// 하나의 mapper.xml 내부에 여러개의 SQL 작성 가능하므로 실행할 SQL을 지정할 값이 필요

	// session.메소드("mapper의 namespace 속성값.실행할 SQL ID 값", 전달 파라미터

	// 결과는 0개 또는 1개
	// 결과가 여러개이면 오류가 난다
	public Member selectOneMember(SqlSession session, Member member) {
		return session.selectOne("member.selectOneMember", member);
	}

	public int insertMember(SqlSession session, Member member) {
		return session.insert("member.insertMember", member);
	}

	// 결과는 0개, 1개 또는 여러개
	public List<Member> selectAllMember(SqlSession session) {
		return session.selectList("member.selectAllMember");
	}

	public int updateMember(SqlSession session, Member member) {
		return session.update("member.updateMember", member);
	}

	public int deleteMember(SqlSession session, String memberNo) {
		return session.delete("member.deleteMember", memberNo);
	}

	public List<Member> selectAllMemberPage(SqlSession session, HashMap<String, Integer> map) {
		return session.selectList("member.selectAllMemberPage", map);
	}

	public int selectTotalCount(SqlSession session) {
		return session.selectOne("member.selectTotalCount");
	}

	public int chgMemberLevel(SqlSession session, Member member) {
		return session.update("member.chgMemberLevel", member);
	}

	public List<Member> selDynamicIfTest(SqlSession session, Member member) {
		return session.selectList("member.selDynamicIfTest", member);
	}

	public List<Member> selDynamicForTest(SqlSession session, String[] members) {
		return session.selectList("member.selDynamicForTest", members);
	}

}
