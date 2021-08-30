package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import util.DBConnection;

public class User {
	private String name, address, pincode, contact, email, password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int addUser() throws SQLException {
		Connection conn = DBConnection.dbconnect();
		String sql = "insert into user values(?,?,?,?,?,?)";
		PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, address);
		ps.setString(3, pincode);
		ps.setString(4, contact);
		ps.setString(5, email);
		ps.setString(6, password);
		int row = ps.executeUpdate();
		conn.close();
		return row;
	}

	public User login() throws SQLException {
		Connection conn = DBConnection.dbconnect();
		String sql = "select *from user where email = ? and password = ? ";
		PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = (ResultSet) ps.executeQuery();
		User u1 = new User();
		if (rs.next()) {
			u1.setEmail(rs.getString("email"));
			u1.setName(rs.getString("name"));
			u1.setAddress(rs.getString("address"));
			u1.setContact(rs.getString("contact"));
		} else {
			u1 = null;
		}
		return u1;
	}

	/*
	 * public ArrayList<User> getAllDetailsFromDB() throws SQLException { Connection
	 * conn = DBConnection.dbconnect();
	 * 
	 * String sql = "select *from user"; PreparedStatement ps = (PreparedStatement)
	 * conn.prepareStatement(sql); ResultSet rs = (ResultSet) ps.executeQuery();
	 * 
	 * ArrayList<User> allUser = new ArrayList<User>();
	 * 
	 * while (rs.next()) { User u1 = new User(); u1.setEmail(rs.getString("email"));
	 * u1.setName(rs.getString("name")); u1.setAddress(rs.getString("address"));
	 * u1.setPincode(rs.getString("pincode"));
	 * u1.setContact(rs.getString("contact"));
	 * 
	 * allUser.add(u1); } return allUser; }
	 */
	/*
	 * public String getAllUserAPI() throws SQLException {
	 * 
	 * Connection conn=(Connection) DBConnection.dbconnect(); String
	 * sql="select *from user"; PreparedStatement ps=(PreparedStatement)
	 * conn.prepareStatement(sql); ResultSet rs=(ResultSet) ps.executeQuery();
	 * 
	 * 
	 * ArrayList<User> allUser=new ArrayList<User>();
	 * 
	 * while(rs.next()) { User u1=new User(); u1.setEmail(rs.getString("email"));
	 * u1.setName(rs.getString("name")); u1.setAddress(rs.getString("address"));
	 * u1.setPincode(rs.getString("pincode"));
	 * u1.setContact(rs.getString("contact"));
	 * 
	 * allUser.add(u1); } JsonObject jsonObj=new JsonObject(); JsonArray jsonArray2
	 * = new Gson().toJsonTree(allUser).getAsJsonArray(); jsonObj.add("jsonArray2",
	 * jsonArray2); System.out.println(jsonObj.toString()); String
	 * result=jsonObj.toString(); return result; }
	 */
	public User getDetailsByEmail() throws SQLException {
		Connection conn = DBConnection.dbconnect();
		String sql = "select *from user where email = ? ";
		PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs = (ResultSet) ps.executeQuery();
		User u1 = new User();
		if (rs.next()) {
			u1.setEmail(rs.getString("email"));
			u1.setName(rs.getString("name"));
			u1.setAddress(rs.getString("address"));
			u1.setPincode(rs.getString("pincode"));
			u1.setContact(rs.getString("contact"));
		} else {
			u1 = null;
		}
		return u1;
	}

	public int updateUser() throws SQLException {
		Connection conn = DBConnection.dbconnect();
		// SQL queries
		String sql = "update user set name=?, address=?, pincode=?, contact=? where email=?";

		// Statement (set data) and execute
		PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);

		ps.setString(1, name);
		ps.setString(2, address);
		ps.setString(3, pincode);
		ps.setString(4, contact);
		ps.setString(5, email);

		// ps.execute();
		int row = ps.executeUpdate();

		// close conection
		conn.close();
		return row;
	}

}
