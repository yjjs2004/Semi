package net.person.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.person.db.Person;
import net.person.db.PersonDAO;

public class PersonInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward=new ActionForward();
		String id=request.getParameter("");
		PersonDAO mdao=new PersonDAO();
		Person p=mdao.Person_info(id);
		
		forward.setPath("person/updateForm.jsp");
		forward.setRedirect(false);
		request.setAttribute("personinfo", p);
		return null;
	}

}
