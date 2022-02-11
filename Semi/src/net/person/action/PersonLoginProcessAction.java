package net.person.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.person.db.PersonDAO;

public class PersonLoginProcessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward =new ActionForward();
		String id=request.getParameter("id");
		String pass =request.getParameter("pass");
		PersonDAO pdao=new PersonDAO();
		int  result=pdao.isId(id,pass);
<<<<<<< HEAD
		System.out.println("°á°ú´Â"+result);
		if(result==-1) {
=======
		System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½"+result);
		if(result==1) {
>>>>>>> branch 'master' of https://github.com/yjjs2004/Semi.git
			HttpSession session=request.getSession();
			session.setAttribute("id", id);
			
			String IDStore=request.getParameter("remember");
			Cookie cookie=new Cookie("id",id);
			if(IDStore !=null&&IDStore.equals("objet")) {
				cookie.setMaxAge(2*60);
				response.addCookie(cookie);
			}else {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			
			forward.setRedirect(true);
			forward.setPath("main.com");
			return forward;
	}else {
<<<<<<< HEAD
		String message="ºñ¹Ð¹øÈ£°¡ ÀÏÄ¡ÇÏÁö ¾Ê½À´Ï´Ù.";
		if(result==1) {
			message="¾ÆÀÌµð°¡ Á¸ÀçÇÏÁö ¾Ê½À´Ï´Ù.";
=======
		String message="ï¿½ï¿½Ð¹ï¿½È£ï¿½ï¿½ ï¿½ï¿½Ä¡ï¿½ï¿½ï¿½ï¿½ ï¿½Ê½ï¿½ï¿½Ï´ï¿½.";
		if(result==-1) {
			message="ï¿½ï¿½ï¿½Ìµï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ê½ï¿½ï¿½Ï´ï¿½.";
>>>>>>> branch 'master' of https://github.com/yjjs2004/Semi.git
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('"+message+"');");
			out.println("location.href='login.com';");
			out.println("</script>");
			out.close();
			return null;
		}
	}
	return forward;
	}

}
