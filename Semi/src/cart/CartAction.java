package cart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.cart_db.Cart;
import cart.cart_db.CartDao;


public class CartAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		CartDao cartdao = new CartDao(); 
		List<Cart> cart = new ArrayList<Cart>();
				
		cart = cartdao.getCart();
		
		if(cart == null) {
			System.out.println("실패");
		}
		
		
		request.setAttribute("cart", cart);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/person/basket.jsp");
		return forward;
	}

}
