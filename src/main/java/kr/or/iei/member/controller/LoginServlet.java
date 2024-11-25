package kr.or.iei.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.member.model.service.MemberService;
import kr.or.iei.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 인코딩 - 필터
		// 2. 값 추출
		String memberId = request.getParameter("membeId");
		String memberPw = request.getParameter("membePw");

		// 3. 비즈니스 로직
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);

		MemberService service = new MemberService();
		Member loginMember = service.selectOneMember(member);

		// 4. 결과 처리
		if (loginMember == null) {
			request.setAttribute("title", "알림");
			request.setAttribute("text", "아이디 및 비밀번호");
			request.setAttribute("icon", "error");
			request.setAttribute("loc", "/member/loginFrm");
			request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
		} else {
			System.out.println(loginMember.getMemberId());
			System.out.println(loginMember.getMemberName());
			System.out.println(loginMember.getMemberPhone());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
