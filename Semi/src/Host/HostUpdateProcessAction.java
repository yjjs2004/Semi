package Host;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Host.ActionForward;
import Host_db.Host;
import Host_db.HostDAO;

public class HostUpdateProcessAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			String name= request.getParameter("name");
			String email = request.getParameter("email");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			String day = request.getParameter("day");
			String birth =year+"-"+month+"-"+day;
			
			Host h = new Host();
			h.setHost_id(id);	h.setHost_password(pass);
			h.setHost_name(name); h.setHost_birth(birth); 
			h.setHost_email(email); 
			
			HostDAO mdao = new HostDAO();
			int result = mdao.update(h);
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			if(result ==1) {
				out.println("alert('수정되었습니다.');");
				out.println("location.href='hostUpdate.net';");
			}else {
				out.println("alert('회원 정보 수정에 실패했습니다.');");
				out.println("history.back()");
			}
			out.println("</script>");
			out.close();
			return null;
		
	}

}
