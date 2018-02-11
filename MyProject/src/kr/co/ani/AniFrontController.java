package kr.co.ani;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.ani")
public class AniFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AniDTO aniDTO;
	private AniDAO aniDAO;
	private ArrayList<AniDTO> aniList;
	
	public AniFrontController() {
		aniDTO = new AniDTO();
		aniDAO = new AniDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		if(command.equals("/content.ani")) {
			String title = request.getParameter("title");
			aniDTO.setTitle(title);
			System.out.println(aniDTO.getTitle());
			aniDTO = aniDAO.aniContent(aniDTO);
			aniDAO.aniReadCount(aniDTO);
			System.out.println(aniDTO.getReadCount());
			if(aniDTO.getTitle().equals("naruto")) {
			RequestDispatcher dis = request.getRequestDispatcher("naruto.jsp");
			dis.forward(request, response);
			}
			else if(aniDTO.getTitle().equals("onepiece")) {
				aniDAO.aniReadCount(aniDTO);
				RequestDispatcher dis = request.getRequestDispatcher("onepiece.jsp");
				dis.forward(request, response);				
			}
			else if(aniDTO.getTitle().equals("hunter")) {
				aniDAO.aniReadCount(aniDTO);
				RequestDispatcher dis = request.getRequestDispatcher("hunter.jsp");
				dis.forward(request, response);								
			}
			else if(aniDTO.getTitle().equals("dragonball")) {
				aniDAO.aniReadCount(aniDTO);
				RequestDispatcher dis = request.getRequestDispatcher("dragonball.jsp");
				dis.forward(request, response);												
			}
		}
		else if(command.equals("/list.ani")) {
			aniList = aniDAO.aniList(aniDTO);
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp?page=action");
			request.setAttribute("aniList", aniList);
			dis.forward(request, response);
		}
	}

}
