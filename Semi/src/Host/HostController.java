package Host;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.net")
public class HostController extends javax.servlet.http.HttpServlet {
	private static final long serialVersionUID =1L;
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		/*
		 * 요청된 전체 URL중에서 포트 번호 다음 부터 마지막 문자열까지 반환 됩니다.
		 예) contextPath가 "/JspProject"인 경우
		 	http://localhost:8088/JspProject/login.net로 요청하면 RequestURI는
		 	"/JspProject/login.net" 반환됩니다.
		 */
		String RequestURI = request.getRequestURI();
		System.out.println("RequestURI = "+ RequestURI);
		
		//getContextPath() : 컨텍스트 경로가 반환됩니다.
		//contextPath는 "/JspProject"가 반환됩니다.
		String contextPath = request.getContextPath();
		System.out.println("contextPath = "+ contextPath);
		
		//RequestURI에서 컨텍스트 경로 길기 값의 인덱스 위치의 문자부터
		//마지막 위치 문자까지 추출합니다.
		//command는 "/login.net" 반환됩니다.
		String command = RequestURI.substring(contextPath.length());
		System.out.println("command = "+ command);
		
		//초기화
		Action action = null;
		ActionForward forward =null;
		switch (command) {
		case "/host_join.net":
			action = new HostJoinAction();
			break;
		case "/host_idcheck.net":
			action = new HostIdCheckAction();
			break;
		case "/login.net":
			action = new HostLoginAction();
			break;
		case "/host_joinProcess.net":
			action = new HostJoinProcessAction();
			break;
		case "/loginProcess.net":
			action = new HostLoginProcessAction();
			break;
		case "/logout.net":
			action = new HostLogoutAction();
			break;
		case "/hostUpdate.net":
			action = new HostUpdateAction();
			break;
		case "/updateProcess.net":
			action = new HostUpdateProcessAction();
			break;
		case "/hostInfo.net":
			action = new HostInfoAction();
			break;
		case "/hostDelete.net":
			action = new HostDeleteAction();
			break;
		case "/reg.net": //숙소등록
			action = new HostRegview();
			break;
		case "/res_detail.net": //예약관리
			action = new Res_detailview();
			break;
		case "/list.net": //숙소관리
			action = new List_view();
			break;
		case "/room_process.net": //숙소관리
			action = new RoomProcessAction();
			break;
		}//switch end
		forward = action.execute(request, response);
		
		if(forward !=null) {
			if(forward.isRedirect()) {//리다이렉트 됩니다.
				response.sendRedirect(forward.getPath());
			}else {//포워딩됩니다.
				RequestDispatcher dispatcher=
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request,response);
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		doProcess(request, response);
	}

}
