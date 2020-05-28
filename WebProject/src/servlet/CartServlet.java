package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;


@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public CartServlet() {


    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	int hook = Integer.parseInt(request.getParameter("hook"));
		int cloth = Integer.parseInt(request.getParameter("cloth"));
		int size = Integer.parseInt(request.getParameter("size"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int  pattern = Integer.parseInt(request.getParameter("pattern"));
		int price = 1000;

		System.out.println(quantity);

		boolean hook_flg;
		if(hook==0){
		hook_flg=true;
		}else{
		hook_flg=false;
		}

		boolean cloth_flg;
		if(hook==0){
		cloth_flg=true;
		}else{
		cloth_flg=false;
		}



		Cart c = new Cart(pattern, size, cloth_flg, hook_flg, quantity, price);
		HttpSession session = request.getSession();
		session.setAttribute("Cart", c);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Cart.jsp");
				dispatcher.forward(request, response);









	}

}