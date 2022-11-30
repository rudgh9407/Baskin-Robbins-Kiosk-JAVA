// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppInitServlet.java

package kiosk.servlets;

import com.jcraft.jsch.Session;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;

public class AppInitServlet extends HttpServlet
{

    public AppInitServlet()
    {
    }

    public void init(ServletConfig config)
        throws ServletException
    {
        super.init(config);
        try
        {
            ServletContext sc = getServletContext();
            Class.forName(sc.getInitParameter("driver"));
            Connection conn = DriverManager.getConnection(sc.getInitParameter("url"), sc.getInitParameter("username"), sc.getInitParameter("password"));
            System.out.println("DB Connection...");
            sc.setAttribute("conn", conn);
        }
        catch(Throwable e)
        {
            throw new ServletException(e);
        }
    }

    public void destroy()
    {
        super.destroy();
        Connection conn = (Connection)getServletContext().getAttribute("conn");
        try
        {
            if(conn != null && !conn.isClosed())
                conn.close();
            session.disconnect();
        }
        catch(Exception exception) { }
    }

    private Session session;
}
