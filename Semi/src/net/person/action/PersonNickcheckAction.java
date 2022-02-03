package net.person.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.person.db.PersonDAO;

public class PersonNickcheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PersonDAO dao=new PersonDAO();
		int result = dao.isNick(request.getParameter("nick"));
		response.getWriter().append(Integer.toString(result));
		System.out.println(result);
		return null;
	}

}
