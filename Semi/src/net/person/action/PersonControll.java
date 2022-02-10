package net.person.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.com")
public class PersonControll extends javax.servlet.http.HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * ��û�� ��ü URL �߿��� ��Ʈ ��ȣ �������� ������ ���ڿ����� ��ȯ�˴ϴ�. ��)contextPath�� "/JspProject" �ΰ��
		 * http://localhost:8088/JspProject/login.net�� ��û�ϸ� RequestURI��
		 * "/JspProject/login.net" ��ȯ�˴ϴ�.
		 */

		String RequestURI = request.getRequestURI();
		System.out.println("RequestURI = " + RequestURI);

		// getGontextPath() : ���ؽ�Ʈ ��ΰ� ��ȯ�˴ϴ�.
		// contextPath�� "/JspProject"�� ��ȯ�˴ϴ�.
		String contextPath = request.getContextPath();
		System.out.println("contextPath = " + contextPath);

		// RequestURI���� ���ؽ�Ʈ ��� ���� ���� �ε��� ��ġ�� ���ں���
		// ������ ��ġ ���ڱ��� �����մϴ�.
		// command�� "/login.net" ��ȯ�˴ϴ�.
		String command = RequestURI.substring(contextPath.length());
		System.out.println("command = " + command);

		// �ʱ�ȭ
		ActionForward forward = null;
		Action action = null;

		switch (command) {
		case "/join.com":
			action = new PersonJoinAction();
			break;
		case "/idcheck.com":
			action = new PersonIdcheckAction();
			break;
		case "/nickcheck.com":
			action = new PersonNickcheckAction();
			break;
		case "/login.com":
			action = new PersonLoginAction();
			break;
		case "/joinProcess.com":
			action = new PersonJoinProcessAction();
			break;
		case "/faqregist.com":
			action = new PersonFaqRegisterAction();
			break;
		case "/faqhistory.com":
			action = new PersonFaqHistoryAction();
			break;
		case "/main.com":
			action = new PersonMainPageAction();
			break;
		/*
		 * 
		 * case"/loginProcess.net": action = new MemberLoginProcessAction(); break;
		 * case"/logout.net": action = new MemberLogoutAction(); break;
		 * case"/memberUpdate.net": action = new MemberUpdateAction(); break;
		 * case"/updateProcess.net": action = new MemberUpdateProcessAction(); break;
		 * case"/memberList.net": action = new MemberSearchAction(); break;
		 * case"/memberInfo.net": action = new MemberInfoAction(); break;
		 * case"/memberDelete.net": action = new MemberDeleteAction(); break;
		 */
		}// switch end

		forward = action.execute(request, response);
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {// ������ �˴ϴ�.
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doProcess(request, response);
	}

}
