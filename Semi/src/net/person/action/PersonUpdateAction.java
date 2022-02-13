package net.person.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.person.db.Person;
import net.person.db.PersonDAO;

public class PersonUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward =new ActionForward();
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("id");
		
		PersonDAO pdao=new PersonDAO();
		Person p=pdao.Person_info(id);
		
		forward.setPath("person/updateForm2.jsp");
		forward.setRedirect(false);
		request.setAttribute("personinfo", p);
		
		return forward;
	}

}
