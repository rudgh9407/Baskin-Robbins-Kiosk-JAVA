package kiosk.servlets;

import java.sql.Connection;
import java.sql.DriverManager;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

@SuppressWarnings("serial")
public class AppInitServlet extends HttpServlet {
	private Session session;
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try {
			ServletContext sc = this.getServletContext();
			JSch jsch = new JSch();
			session = jsch.getSession(sc.getInitParameter("ssh_id"),sc.getInitParameter("host"),22);
			session.setPassword(sc.getInitParameter("ssh_pw"));
            java.util.Properties config_ssh = new java.util.Properties();
            config_ssh.put("StrictHostKeyChecking", "no");
            this.session.setConfig(config_ssh);
            session.connect();	
            System.out.println("SSH Connection...");
            int forward_port = session.setPortForwardingL(0, "127.0.0.1", 3306); 
            System.out.println(forward_port + " --> 3306");
			Class.forName(sc.getInitParameter("driver"));
			Connection conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:" + forward_port + "/c16st10",
						sc.getInitParameter("username"),
						sc.getInitParameter("password"));
			System.out.println("DB Connection...");
			sc.setAttribute("conn", conn);
		} catch(Throwable e) {
			throw new ServletException(e);
		}
	}
	@Override
	public void destroy() {
		super.destroy();
		Connection conn = 
				(Connection)this.getServletContext().getAttribute("conn"); 
		try {
			if (conn != null && conn.isClosed() == false) {
				conn.close();
			}
			session.disconnect();
		} catch (Exception e) {}
	}
}

