package controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PizzaServlet
 */
@WebServlet("/pizza")
public class PizzaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PizzaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pizza = request.getParameter("pizza");
//		System.out.println(pizza);		
//		System.out.println(String.join(", ", topping));
//		System.out.println(String.join(", ", side));
	
		String[] topping = request.getParameterValues("topping");
		String[] side = request.getParameterValues("side");
		
		// !!! jsp에서 사용하기 전에 객체 전달하기
		request.setAttribute("pizza", pizza);
		request.setAttribute("topping", topping);
		request.setAttribute("side", side);
		
		request.getRequestDispatcher("views/pizzaOrder.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
