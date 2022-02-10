package Host;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Host_db.Host;
import Host_db.HostDAO;

public class HostUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		HostDAO hdao = new HostDAO();
		Host h = hdao.member_info(id);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("host/updateInfo.jsp");
		request.setAttribute("updateInfo", h);
		return forward;
	}

}
