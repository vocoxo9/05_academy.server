package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestGetServlet
 */
@WebServlet("/test.do")
public class RequestGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestGetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@@@ Get 요청이 들어옴 @@@");
		
		/*
		 *  * 첫번째 매개변수(HttpServletRequest)에는 요청 시 전달된 내용들이 담겨져 있음
		 *  	-> 사용자가 입력한 값, 요청방식, 요청자의 ip주소 등등
		 *  
		 *  * 두번째 매개변수(HttpServletResponse)에는 요청에 대한 처리 후 응답할 때 사용할 객체
		 *  
		 *  -------------------------------------------------
		 *  
		 *  - 요청시 전달된 데이터 추출(request 객체의 parameter 영역 안에 데이터가 담겨져 있음)
		 *  request.getParameter("키값"):String -> 키값에 해당하는 데이터를 반환
		 */
		String userName = request.getParameter("userName");	// 이름(userName)
		// input:text --> "입력된값" 또는 ""
		
		String gender = request.getParameter("gender");	// 성별(gender)
		// input:radio --> "입력된값" 또는 null(선택 항목이 없을 경우)
		
		String age = request.getParameter("age");	// 나이(age)
		// input:number --> "입력된값" 또는 ""
		
		String address = request.getParameter("address");	// 주소(address)
		// select+option --> "선택된값"
		
		String height = request.getParameter("height");	// 키(height)
		// input:range --> "선택된값"
		
		System.out.println("이름 : " + userName);
		System.out.println("성별 : " + gender);
		System.out.println("나이 : " + age);
		System.out.println("주소 : " + address);
		System.out.println("키 : " + height);
		
		// "나이" 데이터를 정수형 변수에 저장하고자 한다면?
		if(!age.isEmpty()) {
			int ageNum = Integer.parseInt(age);
			System.out.println("나이 : " + ageNum);
		}
		
		// "키" 데이터를 실수형 변수에 저장해서 출력
		double heightNum = Double.parseDouble(height);
		if(!height.isEmpty()) {
			System.out.println("키 : " + heightNum);
		}
		
		// 같은 키값으로 전달된 데이터를 추출
		// request.getParameterValues("키값"):String[]
		String[] foods = request.getParameterValues("food");
		System.out.println(Arrays.toString(foods));
		if(foods == null) {
			System.out.println("좋아하는 음식이 없습니다.");
		} else {
			System.out.println("좋아하는 음식 : " + String.join(", ", foods));
		}
		
		// ---------------------------------------------
		// Controller(Servlet) --> DAO > DB작업
		
		// * 응답 데이터의 문서형식 및 인코딩 방식 설정
		response.setContentType("text/html; charset=UTF-8");
		
		// * 응답 시 사용할 스트림 객체(PrintWriter --> 응답 페이지를 작성)
		PrintWriter pw = response.getWriter();
		
		pw.println("<!doctype html>");
		pw.println("<html>");
		
		pw.println("<head>");
		
		pw.println("<style>");
		pw.println("span {color : red;}");
		pw.println("</style>");
		
		pw.println("</head>");
		
		pw.println("<body>");
		
		pw.println("<h2> 응답 페이지 </h2>");
		pw.printf("<span>%s</span>님은 ", userName);
		pw.printf("<span>%s</span>에 살고있습니다.", address);
		if(foods == null) {
			// 선택된 음식 정보가 없을 경우
			pw.println("좋아하는 음식이 없습니다.");
		} else {
			// 선택된 음식이 있을 경우
			pw.printf("좋아하는 음식 : <span>%s</span>", String.join("/", foods));
		}
		
		pw.println("</body>");
		pw.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		doGet(request, response);
		String userName = request.getParameter("userName");
		System.out.println(userName);
	}

}
