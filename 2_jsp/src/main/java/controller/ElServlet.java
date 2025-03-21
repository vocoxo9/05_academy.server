package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.vo.Student;

/**
 * Servlet implementation class ElServlet
 */
@WebServlet("/el.do")
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  * JSP 내장 객체 종류 *
		 *  => 데이터를 담을 수 있는 공간
		 *  
		 *  1) ServletContext (application scope)
		 *  	: 한 어플리케이션 당 단 1개 존재하는 객체
		 *  	  해당 영역에 데이터를 담을 경우 어플리케이션 전역에서 사용이 가능
		 *  
		 *  2) HttpSession (session scope)
		 *  	: 한 브라우저 당 1개 존재하는 객체
		 *  	  해당 영역에 데이터를 담을 경우 jsp/servlet 단에서 사용 가능
		 *  
		 *  3) HttpServletRequest (request scope)
		 *  	: 요청마다 매번 생성되는 객체
		 *  	  해당 영역에 데이터를 담을 경우 request 객체를 포워딩 받는 응답 jsp에서만 사용 가능
		 *  
		 *  4) PageContext	(page scope)
		 *  	: jsp마다 존재하는 객체
		 *  	  해당 페이지에서만 사용 가능
		 *  --------------------------------------------------------------------------
		 *  - 위의 4개의 객체들에 데이터를 담을 때 xxx.setAttribute("키", 데이터);
		 *  				  데이터를 꺼낼 때 xxx.getAttribute("키값");
		 *  				  데이터를 지울 때 xxx.removeAttribute("키값");
		 */
		
		// request scope에 데이터 담기
		request.setAttribute("classRoom", "A");
		request.setAttribute("student", new Student("정혜영",28,"여자"));
		
		// session scope에 데이터 담기
		HttpSession session = request.getSession();
		session.setAttribute("academy", "KH");
		session.setAttribute("student2", new Student("노승재",36,"남자"));
		
		// request, session scope에 동일한 키값으로 데이터 담기
		request.setAttribute("scope", "request!");
		session.setAttribute("scope", "session!");
		
		// application scope에 데이터 담기
		ServletContext application = request.getServletContext();
		application.setAttribute("scope", "application!");
		
		// jsp 페이지로 응답하기
		request.getRequestDispatcher("views/2_EL/1_el.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
