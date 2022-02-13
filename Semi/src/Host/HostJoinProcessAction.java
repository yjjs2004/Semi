package Host;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Host_db.Host;
import Host_db.HostDAO;

public class HostJoinProcessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id =request.getParameter("id");
		String pass =request.getParameter("pass1");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String birth =year+"-"+month+"-"+day;
		
		String name =request.getParameter("name");
		String addrzipnum =request.getParameter("addrzipnum");
		String addrbasic =request.getParameter("addrbasic");
		String addrdetail =request.getParameter("addrdetail");
		String business =request.getParameter("business");
		String email = request.getParameter("email");
		String business_name = request.getParameter("business_name");
		String business_num = request.getParameter("busino");
		String corporation_name = request.getParameter("colp_name");
		String corporation_num = request.getParameter("j1")+request.getParameter("j2");
		
		Host h =new Host();
		h.setHost_id(id); h.setHost_password(pass); h.setHost_name(name);
		h.setHost_birth(birth); h.setAddrzipnum(addrzipnum); h.setAddrbasic(addrbasic); h.setAddrdetail(addrdetail);
		h.setHost_business(business);h.setHost_email(email);
		h.setBusiness_name(business_name);h.setBusiness_num(business_num);
		h.setCorporation_name(corporation_name); h.setCorporation_num(corporation_num);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		HostDAO hdao = new HostDAO();
		
		int result = hdao.insert(h);
		if(result==0) {
			System.out.println("회원 가입 실패입니다.");
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("message", "회원 가입 실패입니다.");
			forward.setPath("error/error.jsp");
			return forward;
		}
		
		out.println("<script>");
		if(result == 1 ) {
			out.println("alert('회원가입을 축하합니다.');");
			out.println("location.href='login.net';");
		}else if(result == -1) {
			out.println("alert('아이디가 중복되었습니다. 다시 입력하세요');");
			//새로고침되어 이전에 입력한 데이터가 나타나지 않습니다.
			out.println("history.back()");//비밀번호를 제외한 다른 데이터는 유지 되어있다.
		}
		out.println("</script>");
		out.close();
		return null;
	}
//company/accommodation/list.jsp?accType=2
}
