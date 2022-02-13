package Host;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HostMainPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward =new ActionForward();
		forward.setRedirect(false);
		forward.setPath("host/test2.jsp");
		return forward;		
	}

}
