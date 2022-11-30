// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   KioskMainServlet.java

package kiosk.servlets;

import java.io.IOException;
import java.io.PrintStream;
import java.sql.Connection;
import java.util.Arrays;
import java.util.LinkedList;
import javax.servlet.*;
import javax.servlet.http.*;
import kiosk.dao.AdminDao;
import kiosk.dao.MamberDao;

public class KioskMainServlet extends HttpServlet
{

    public KioskMainServlet()
    {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        try
        {
            response.setContentType("text/html; charset=UTF-8");
            ServletContext sc = getServletContext();
            Connection conn = (Connection)sc.getAttribute("conn");
            MamberDao memberDao = new MamberDao();
            memberDao.setConnection(conn);
            request.setAttribute("members", memberDao.selectMemberList());
            request.setAttribute("memberCount", memberDao.maxMemberList());
            AdminDao adminDao = new AdminDao();
            adminDao.setConnection(conn);
            request.setAttribute("admins", adminDao.selectAdminList());
            RequestDispatcher rd = request.getRequestDispatcher("/jsp/KioskPage.jsp");
            rd.include(request, response);
        }
        catch(Exception e)
        {
            throw new ServletException(e);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        try
        {
            response.setContentType("text/html; charset=UTF-8");
            ServletContext sc = getServletContext();
            Connection conn = (Connection)sc.getAttribute("conn");
            String userId = request.getParameter("id");
            String userNumber = request.getParameter("number");
            String userPoint = request.getParameter("point");
            String userCount = request.getParameter("count");
            String userDate = request.getParameter("date");
            String keyCount = request.getParameter("keyCount");
            String userKey = request.getParameter("key");
            AdminDao adminDao = new AdminDao();
            adminDao.setConnection(conn);
            if(keyCount.equals("2"))
                adminDao.resetCount(Integer.parseInt(userId));
            String adminData = request.getParameter("adminDataList");
            System.out.println(adminData);
            LinkedList adminList = new LinkedList();
            String adminListSample[] = adminData.split("\\|\\|");
            System.out.println(Arrays.toString(adminListSample));
            for(int i = 0; i < adminListSample.length; i++)
                adminList.add(adminListSample[i].split(","));

            adminDao.insertAdmin(adminList);
            if(userKey.equals("0"))
                adminDao.insertMember(userNumber, userPoint, userCount, userDate);
            else
                adminDao.updateMember(userPoint, userCount, userDate, Integer.parseInt(userId));
            response.sendRedirect("kiosk.do");
        }
        catch(Exception e)
        {
            throw new ServletException(e);
        }
    }

    private static final long serialVersionUID = 1L;
}
