package Host;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Room.Room;
import Room.RoomDAO;


public class RoomProcessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
String realFolder="";
		
		String saveFolder="hostupload";
		
		int fileSize=5*1024*1024;
		
		ServletContext sc = request.getServletContext();
		realFolder=sc.getRealPath(saveFolder);
		System.out.println("realFolder="+realFolder);
		
		ActionForward forward = new ActionForward();
		try {
			MultipartRequest multi = new MultipartRequest(request,realFolder,fileSize,"utf-8",new DefaultFileRenamePolicy());
		String name = multi.getParameter("name");
		String addrzipnum =multi.getParameter("addrzipnum");
		String addrbasic =multi.getParameter("addrbasic");
		String addrdetail =multi.getParameter("addrdetail");
		String room_type = multi.getParameter("room_type");
		String room_text = multi.getParameter("room_text");
		String room_img = multi.getFilesystemName("room_img");
		String rooms_name = multi.getParameter("rooms_name");
		String personnel = multi.getParameter("personnel");
		String bedcount = multi.getParameter("bedcount");
		String price = multi.getParameter("price");
		String rooms_img1 = multi.getFilesystemName("rooms_img1");
		String rooms_img2 = multi.getFilesystemName("rooms_img2");


		Room r = new Room();
		
		r.setName(name);
		r.setAddrzipnum(addrzipnum);
		r.setAddrbasic(addrbasic);
		r.setAddrdetail(addrdetail);
		r.setRoom_text(room_text);
		r.setRoom_type(room_type);
		r.setRoom_img(room_img);
		r.setRooms_name(rooms_name);
		r.setPersonnel(personnel);
		r.setBedcount(bedcount);
		r.setPrice(price);
		r.setRooms_img1(rooms_img1);
		r.setRooms_img2(rooms_img2);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		RoomDAO rdao = new RoomDAO();

		int result = rdao.insert(r);
		if (result == 0) {
			System.out.println("숙소 등록 실패입니다.");
			
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
	}catch(IOException ex) {
		forward.setPath("error/error.jsp");
		request.setAttribute("message", "게시판 업로드 실패입니다.");
		forward.setRedirect(false);
		return forward;
	}
	}
//company/accommodation/list.jsp?accType=2
}
