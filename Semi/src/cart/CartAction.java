package cart;

import java.io.IOException;


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
		Cart cart = new Cart();
		
		cart = cartdao.getCart();
		
		if(cart == null) {
			for(int i =0; i<10; i++)
			System.out.println("실패");
		}
		
		request.setAttribute("cart", cart);
					
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/person/cart.jsp");
		return forward;
	}

}
