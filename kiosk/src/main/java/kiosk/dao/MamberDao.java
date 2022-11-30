package kiosk.dao;

import java.io.FileWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletContext;
import kiosk.vo.Member;

public class MamberDao {
	Connection connection;
	public void setConnection(Connection connection) { 
		this.connection = connection;
	}
	public List<Member> selectMemberList() throws Exception {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		System.out.println("selectMemberList() 호출됨");
		try {
			stmt = this.connection.prepareStatement("SELECT * FROM KioskMember");
			rs = stmt.executeQuery();
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
			ArrayList<Member> members = new ArrayList<Member>();
			while(rs.next()) {
				members.add(new Member(rs.getInt("id"), rs.getString("number"), rs.getInt("point"), rs.getInt("count"), simpleDate.format(rs.getDate("date")) ));
			}
			int memberListCount = 0;
			String memberListString = "[";
			for(Member member : members) {
				memberListString += ("{\"id\": " + member.getId() + ", ");
				memberListString += ("\"number\": \"" + member.getNumber() + "\", ");
				memberListString += ("\"point\": " + member.getPoint() + ", ");
				memberListString += ("\"count\": " + member.getCount() + ", ");
				memberListCount++;
				if(memberListCount == (members.size())) {
					memberListString += ("\"date\": \"" + member.getDate() +"\"}");
				} else {					
					memberListString += ("\"date\": \"" + member.getDate() +"\"},");
				}
			}
			memberListString += "]";
			Writer writer = new FileWriter("C:\\Users\\parkgh\\eclipse-workspace\\kiosk\\src\\main\\webapp\\json/memberList.json");
			writer.write(memberListString);
			writer.flush();
			writer.close();
			return members;
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
		}
	}
	public Member maxMemberList() throws Exception {
		PreparedStatement stmt_1 = null;
		PreparedStatement stmt_2 = null;
		ResultSet rs_1 = null;
		ResultSet rs_2 = null;
		System.out.println("maxMemberList() 호출됨");
		try {
			stmt_1 = this.connection.prepareStatement(
					"SELECT count 'max', id FROM KioskMember WHERE count = (SELECT MAX(count) FROM KioskMember)"
			);
			rs_1 = stmt_1.executeQuery();
			rs_1.next();
			Member memberCount = new Member();
			memberCount.setCountMax(rs_1.getInt("max"));
			memberCount.setTargetId(rs_1.getInt("id"));
			stmt_2 = this.connection.prepareStatement("SELECT date FROM KioskMember WHERE id =" + memberCount.getTargetId());
			rs_2 = stmt_2.executeQuery();
			rs_2.next();
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
			memberCount.setDayMax( simpleDate.format(rs_2.getDate("date")) );
			return memberCount;
		} catch(Exception e) {
			throw e;
		} finally {
			try {if (rs_1 != null) rs_1.close();} catch(Exception e) {}
			try {if (stmt_1 != null) stmt_1.close();} catch(Exception e) {}
			try {if (rs_2 != null) rs_2.close();} catch(Exception e) {}
			try {if (stmt_2 != null) stmt_2.close();} catch(Exception e) {}
		}
	}
}


