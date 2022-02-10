package net.person.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.person.db.Faq;
import net.person.db.PersonDAO;

public class PersonFaqInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward=new ActionForward();
		String id=request.getParameter("id");
		PersonDAO pdao=new PersonDAO();
		Faq f=pdao.Faq_info(id);
		
		if(f==null) {
			forward.setPath("error/error.jsp");
			forward.setRedirect(false);
			request.setAttribute("message", "아이디에 해당하는 문의가 없습니다.");
		}
		
		forward.setPath("person/faq_history.jsp");
		forward.setRedirect(false);
		request.setAttribute("faqinfo", f);
		return forward;
	}

}
