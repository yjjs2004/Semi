package net.person.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.person.db.Faq;
import net.person.db.PersonDAO;

public class PersonFaqRegisterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("id");
		String faq=request.getParameter("faq");
		String subject=request.getParameter("subject");
		String content=request.getParameter("editordata");
		
		Faq f=new Faq();
		f.setFAQ_ID(id);
		f.setFAQ_KINDS(faq);
		f.setFAQ_SUBJECT(subject);
		f.setFAQ_CONTENT(content);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		PersonDAO pdao = new PersonDAO();
		int result=pdao.faq_regist(f);
		
		if(result==0) {
			System.out.println("문의 등록  실패입니다.");
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("message", "문의 등록 실패입니다.");
			forward.setPath("error/error.jsp");
			return forward;
		}
		
		out.println("<script>");
		if(result==1) {
			out.println("alert('문의가 등록되었습니다..')");
			out.println("location.href='login.com'");
		}
		out.println("</script>");
		out.close();
		return null;
	}

}
