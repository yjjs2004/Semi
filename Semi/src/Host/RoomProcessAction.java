package Host;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Room.Room;
import Room.RoomDAO;


public class RoomProcessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String location = request.getParameter("location");
		String filename = request.getParameter("filename");
		String fileroute = request.getParameter("fileroute");

		String rooms_name = request.getParameter("rooms_name");
		String personnel = request.getParameter("personnel");
		String bedcount = request.getParameter("bedcount");
		String price = request.getParameter("price");

		String filename_a = request.getParameter("filename_a");
		String fileroute_b = request.getParameter("fileroute_b");

		Room r = new Room();
		
		r.setName(name);
		r.setName(phone);
		r.setLocation(location);
		r.setFilename(filename);
		r.setFileroute(fileroute);
		r.setRooms_name(rooms_name);
		r.setPersonnel(personnel);
		r.setBedcount(bedcount);
		r.setPrice(price);
		r.setFilename_a(filename_a);
		r.setFileroute_b(fileroute_b);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		RoomDAO rdao = new RoomDAO();

		int result = rdao.insert(r);
		if (result == 0) {
			System.out.println("숙소 등록 실패입니다.");
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("message", "숙소 등록 실패입니다.");
			forward.setPath("error/error.jsp");
			return forward;
		}

		out.println("<script>");
		out.println("alert('숙소등록이 성공했습니다.');");
		out.println("location.href='list.net';");
		out.println("</script>");
		out.close();
		return null;
	}
//company/accommodation/list.jsp?accType=2
}
