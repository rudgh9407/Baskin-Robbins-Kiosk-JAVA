package kiosk.dao;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import kiosk.vo.Admin;

public class AdminDao {
	Connection connection;
	public void setConnection(Connection connection) { 
		this.connection = connection;
	}
	public List<Admin> selectAdminList() throws Exception {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		System.out.println("selectAdminList 호출");
		try {
			stmt = this.connection.prepareStatement("SELECT * FROM KioskAdmin");
			rs = stmt.executeQuery();
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
			ArrayList<Admin> admins = new ArrayList<Admin>();
			while(rs.next()) {
				admins.add(new Admin(rs.getInt("id"), rs.getString("category"), rs.getString("menu"), rs.getInt("count"), rs.getLong("price"), simpleDate.format(rs.getDate("date")) ));
			}
			int adminListCount = 0;
			String adminListString = "[";
			for(Admin admin : admins) {
				adminListString += ("{\"id\": " + admin.getId() + ", ");
				adminListString += ("\"category\": \"" + admin.getCategory() + "\", ");
				adminListString += ("\"menu\": \"" + admin.getMenu() + "\", ");
				adminListString += ("\"count\": " + admin.getCount() + ", ");
				adminListString += ("\"price\": " + admin.getPrice() + ", ");
				adminListCount++;
				if(adminListCount == (admins.size())) {
					adminListString += ("\"date\": \"" + admin.getDate() +"\"}");
				} else {					
					adminListString += ("\"date\": \"" + admin.getDate() +"\"},");
				}
			}
			adminListString += "]";
			BufferedWriter writer= new BufferedWriter(new OutputStreamWriter(new FileOutputStream("C:\\Users\\parkgh\\eclipse-workspace\\kiosk\\src\\main\\webapp\\json/adminList.json"), "utf-8"));
			writer.write(adminListString);
			writer.flush();
			writer.close();
			return admins;
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}
	
	public void resetCount(int _userId) throws Exception {
		PreparedStatement stmt = null;
		System.out.println("resetCount 호출");
		try {
			stmt = this.connection.prepareStatement(
					"UPDATE KioskMember SET count = 0 WHERE id != " + _userId
			);
			stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}

	public void updateMember(String _userPoint, String _userCount, String _userDate, int _userId) throws Exception {
		PreparedStatement stmt = null;
		System.out.println("updateMember 호출");
		try {
			stmt = this.connection.prepareStatement(
				"UPDATE KioskMember SET point = " + _userPoint + ", count = " + _userCount + ", date = '" + _userDate + "' WHERE id = " + _userId
			);
			stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}
	
	public void insertMember(String _userNumber, String _userPoint, String _userCount, String _userDate) throws Exception {
		PreparedStatement stmt = null;
		System.out.println("insertMember 호출");
		try {
			stmt = this.connection.prepareStatement(
					"INSERT INTO KioskMember (number, point, count, date) VALUES ('" + _userNumber + "', " + _userPoint + ", " + _userCount + ", '" + _userDate + "')"
			);
			stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}
	
	public void insertAdmin(LinkedList<String[]> _adminList) throws Exception {
		PreparedStatement stmt = null;
		System.out.println("insertAdmin 호출");
		String sql = "INSERT INTO KioskAdmin (category, menu, count, price, date) VALUES (?, ?, ?, ?, ?)"; 
		try {
			stmt = this.connection.prepareStatement(sql);
			for(int i=0; i<_adminList.size(); i++) {				
				stmt.setString(1, _adminList.get(i)[0]);
				stmt.setString(2, _adminList.get(i)[1]);
				stmt.setString(3, _adminList.get(i)[2]);
				stmt.setString(4, _adminList.get(i)[3]);
				stmt.setString(5, _adminList.get(i)[4]);
				stmt.addBatch();
			}
			stmt.executeBatch();
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}
	
}
