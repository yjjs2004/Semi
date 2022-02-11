package cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.test")
public class CartController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{	
		String RequestURI = request.getRequestURI();
		System.out.println("cart RequestURI = "+ RequestURI);
				
		String contextPath = request.getContextPath();
		System.out.println("cart contextPath = "+ contextPath);
				
		String command = RequestURI.substring(contextPath.length());
		System.out.println("cart command = "+ command);
		
		//초기화
		Action action = null;
		ActionForward forward =null;
		switch (command) {
		case "/cart.test":
			action = new CartAction();			
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
