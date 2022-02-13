package net.person.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.person.db.Faq;
import net.person.db.PersonDAO;

public class PersonFaqInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward=new ActionForward();
		HttpSession  session=request.getSession();
		String id=(String) session.getAttribute("id");
		PersonDAO pdao=new PersonDAO();
		ArrayList<Faq> list=pdao.Faq_info(id);
		
		if(list==null) {
			forward.setPath("error/error.jsp");
			forward.setRedirect(false);
			request.setAttribute("message", "아이디에 해당하는 문의가 없습니다.");
		}else {
			forward.setPath("person/faq_history2.jsp");
			forward.setRedirect(false);
			request.setAttribute("faqinfo", list);
		}
	
		return forward;
	}

}
