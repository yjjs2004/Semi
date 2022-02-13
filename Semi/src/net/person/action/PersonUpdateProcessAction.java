package net.person.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.person.db.Person;
import net.person.db.PersonDAO;

public class PersonUpdateProcessAction implements Action {

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
		
		PersonDAO pdao=new PersonDAO();
		int result=pdao.update(p);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out= response.getWriter();
		out.println("<script>");
		
		if(result==1) {
			out.println("alert('수정되었습니다')");
			out.println("location.href='mypage.com';");
		}else {
			out.println("alert('회원정보 수정에 실패했습니다.')");
			out.println("history.back()");
		}
		out.println("</script>");
		return null;
	}

}
