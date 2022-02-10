package Host;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Host.ActionForward;
import Host_db.Host;
import Host_db.HostDAO;

public class HostUpdateProcessAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String realFolder = "";
		
		String saveFolder ="memberupload";
		
		int fileSize = 5 * 1024  * 1024;
		
		//실제 경로
		ServletContext sc = request.getServletContext();
		realFolder =sc.getRealPath(saveFolder);
		System.out.println("realFolder= "+ realFolder);
		try {
			MultipartRequest multi = new MultipartRequest(request, realFolder, fileSize, "utf-8",
					new DefaultFileRenamePolicy());
			String id = multi.getParameter("id");
			String pass = multi.getParameter("pass");
			String name= multi.getParameter("name");
			String email = multi.getParameter("email");
			String birth = multi.getParameter("birth");
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
				out.println("location.href='BoardList.bo';");
			}else {
				out.println("alert('회원 정보 수정에 실패했습니다.');");
				out.println("history.back()");
			}
			out.println("</script>");
			out.close();
			return null;
		}catch(IOException ex) {
			ActionForward forward = new ActionForward();
			forward.setPath("error/error.jsp");
			request.setAttribute("message", "프로필 사진 업로드 실패입니다.");
			forward.setRedirect(false);
			return forward;
		}
	}

}
