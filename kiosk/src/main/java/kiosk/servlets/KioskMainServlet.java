package kiosk.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.Arrays;
import java.util.LinkedList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kiosk.dao.AdminDao;
import kiosk.dao.MamberDao;

@WebServlet("/")
public class KioskMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			response.setContentType("text/html; charset=UTF-8");	
			ServletContext sc = this.getServletContext();
			Connection conn = (Connection) sc.getAttribute("conn");
			// DAO에서 MemberList DB 값 불러오기 및 JSON 저장
			MamberDao memberDao = new MamberDao();
			memberDao.setConnection(conn);
			request.setAttribute("members", memberDao.selectMemberList());
			// 마지막 주문 번호 저장
			request.setAttribute("memberCount", memberDao.maxMemberList());
			// 관리자 화면 매출 리스트 불러오기 및 JSON 저장
			AdminDao adminDao = new AdminDao();
			adminDao.setConnection(conn);
			request.setAttribute("admins", adminDao.selectAdminList());
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/KioskPage.jsp");
			rd.include(request, response);
		} catch(Exception e) {
			throw new ServletException(e);
		}
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			response.setContentType("text/html; charset=UTF-8");	
			ServletContext sc = this.getServletContext();
			Connection conn = (Connection) sc.getAttribute("conn");
			String userId = request.getParameter("id");
			String userNumber = request.getParameter("number");
			String userPoint = request.getParameter("point");
			String userCount = request.getParameter("count");
			String userDate = request.getParameter("date");
			String keyCount = request.getParameter("keyCount");
			String userKey = request.getParameter("key");
			AdminDao adminDao = new AdminDao();
			adminDao.setConnection(conn);
			if(keyCount.equals("2")) {adminDao.resetCount(Integer.parseInt(userId));}
			String adminData = request.getParameter("adminDataList");
			System.out.println(adminData);
			LinkedList<String[]> adminList = new LinkedList<>();
			String[] adminListSample = adminData.split("\\|\\|");
			System.out.println(Arrays.toString(adminListSample));
			for(int i=0; i<adminListSample.length; i++) {
				adminList.add(adminListSample[i].split(","));
			}
			adminDao.insertAdmin(adminList);
			if(userKey.equals("0")) {
				adminDao.insertMember(userNumber, userPoint, userCount, userDate);				
			} else {
				adminDao.updateMember(userPoint, userCount, userDate, Integer.parseInt(userId));
			}
			response.sendRedirect("kiosk");
		} catch(Exception e) {
			throw new ServletException(e);
		}
	}
		


}
