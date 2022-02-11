package Host;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HostLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
<<<<<<< HEAD
		forward.setPath("host/loginform.jsp");
=======
		forward.setPath("person/loginForm.jsp");
>>>>>>> branch 'master' of https://github.com/yjjs2004/Semi.git
		return forward;
	}

}
