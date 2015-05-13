package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.userbean;
import DB.dbconnection;
public class Usercurd {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	dbconnection db=new dbconnection(conn,pstmt,rs);
	userbean user=new userbean();
	public boolean login(String username,String password)
	{
		boolean flag=false;
		conn=db.getConnection();
		String sql="select * from userinfo where username=? or email=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setString(2,username);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				if(password.equals(rs.getString("password")))
				{
				flag=true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	public void add(String email,String password){
		conn=db.getConnection(); 
		String sql="insert into userinfo(password,email) values(?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(2,email);
			pstmt.setString(1,password);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void reviseuser(String email,String phone,String	qq,String username){
		conn=db.getConnection();
		String sql="update userinfo set username=?,phone=?,qq=? where email=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(2,phone);
			pstmt.setString(3,qq);
			pstmt.setString(1,username);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
