package net.person.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.person.db.Person;
import net.person.db.PersonDAO;

public class PersonJoinProcessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id =request.getParameter("id");
		String nick=request.getParameter("nick");
		String pass=request.getParameter("pass");
		String tel =request.getParameter("tel");
		String name = request.getParameter("name");
		String birth=request.getParameter("birth");
		String gender=request.getParameter("gender");
		String post=request.getParameter("postcode");
		String address=request.getParameter("address")+" "+request.getParameter("detailAddress")+" "+request.getParameter("sample6_extraAddress");
		String email=request.getParameter("email");
		
		Person p=new Person();
		p.setId(id);
		p.setPassword(pass);
		p.setNickname(nick);
		p.setTel(tel);
		p.setName(name);
		p.setBirth(birth);
		p.setGender(gender);
		p.setPost(post);
		p.setAddress(address);
		p.setEmail(email);
		
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		PersonDAO pdao = new PersonDAO();
		
		int result=pdao.insert(p);
		if(result==0) {
			System.out.println("ȸ������  �����Դϴ�.");
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("message", "ȸ������ �����Դϴ�.");
			forward.setPath("error/error.jsp");
			return forward;
		}
		
		out.println("<script>");
		if(result==1) {
			out.println("alert('ȸ�������� �����մϴ�.')");
			out.println("location.href='login.com'");
		}else if(result==-1) {
			out.println("alert('���̵� �ߺ��Ǿ����ϴ�. �ٽ� �Է��ϼ���.')");
			out.println("history.back()");
		}
		out.println("</script>");
		out.close();
		return null;
	}
}