package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/test2.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RequestPostServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("doGet 메소드 실행");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("doPost 메소드 실행");
		request.setCharacterEncoding("UTF-8");
		// => POST 방식인 경우 한글이 포함된 데이터가 있을 경우 인코딩 설정이 필요함

		System.out.println("--------------------");
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		String height = request.getParameter("height");
		String[] foods = request.getParameterValues("food");

		System.out.println("userName : " + userName);
		System.out.println("gender : " + gender);
		System.out.println("age : " + age);
		System.out.println("address : " + address);
		System.out.println("height : " + height);

		if (foods != null) {
//			System.out.println("foods : " + String.join(", ", foods));
			for (String f : foods) {
				System.out.println("food : " + f);
			}
		} else {
			System.out.println("좋아하는 음식이 없습니다.");
		}
		
		/*
		 *  * 순수 서블릿 방식 : Java 코드 내에서 HTML을 작성
		 *  
		 *  * JSP(Java Server Page) 방식 : HTML 내에 Java 코드를 작성하는 방식
		 */

		// 응답 페이지에서 필요한 데이터를 전달
		// --> 전달하는 공간 : request 객체의 attribute라는 공간을 사용(key, value)
		
		request.setAttribute("name", userName);
		request.setAttribute("gender", gender);
		request.setAttribute("age", age);
		request.setAttribute("addr", address);
		request.setAttribute("height", height);
		request.setAttribute("foods", foods);
		
		// 응답 페이지를 jsp에게 맡겨보자
		
		// * jsp 페이지로 응답
		// -> RequestDispatcher 변수명 = request.getRequestDispatcher(응답할페이지경로);
		RequestDispatcher view = request.getRequestDispatcher("views/responsePage.jsp");
		// -> 변수명.forward(request, response);
		view.forward(request, response);
		
	}
}
