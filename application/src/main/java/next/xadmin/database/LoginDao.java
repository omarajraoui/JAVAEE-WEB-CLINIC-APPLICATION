package next.xadmin.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import application.Member;
import next.xadmin.bean.LoginBean;

public class LoginDao {
	
	
	public String validate(Member member)
	{
		String name="";
		
		DBConnection dbConnection=new DBConnection();
		Connection con = dbConnection.getConnection();
		
		String sql = "select * from register where email = ? and password =?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, member.getEmail());
		ps.setString(2, member.getPassword());
		ResultSet rs = ps.executeQuery();
		
		
		while(rs.next()) {
			name=rs.getString("name");
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	}

