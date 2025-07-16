package in.pentagon.studentapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import in.pentagon.studentapp.connector.Connector;
import in.pentagon.studentapp.dto.Student;

public class StudentDAOImplenetation implements StudentDAO {
	private Connection con = null;

	public StudentDAOImplenetation() {
		this.con = Connector.requestConnection();
	}

	@Override
	public boolean insertStudent(Student s) {
		PreparedStatement ps = null;
		int i = 0;
		String query = "INSERT INTO STUDENT VALUES(0,?,?,?,?,?,?,SYSDATE())";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, s.getName());
			ps.setLong(2, s.getPhone());
			ps.setString(3, s.getMail());
			ps.setString(4, s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6, s.getPassword());
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (i > 0)
			return true;
		return false;
	}

	@Override
	public boolean updateStudent(Student s) {
		PreparedStatement ps = null;
		String query = "UPDATE STUDENT SET NAME=?,PHONENUMBER=?,MAIL=?,BRANCH=?,LOCATION=?,PASSWORD=?,DATE=SYSDATE() WHERE ID=?";
		int res = 0;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, s.getName());
			ps.setLong(2, s.getPhone());
			ps.setString(3, s.getMail());
			ps.setString(4, s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6, s.getPassword());
			ps.setInt(7, s.getId());
			res = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (res > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean deleteStudent(int id) {
		String query = "DELETE FROM STUDENT WHERE ID = ?";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			int res = ps.executeUpdate();
			if(res>0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
		
		
	}

	@Override
	public Student getStudent(String mail, String password) {
		Student s = null;
		String query = "SELECT * FROM STUDENT WHERE MAIL = ? AND PASSWORD = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, mail);
			ps.setString(2, password);
			rs = ps.executeQuery();

			if (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setMail(rs.getString("mail"));
				s.setLocation(rs.getString("location"));
				s.setDate(rs.getString("date"));
				s.setPassword(rs.getString("password"));
				s.setBranch(rs.getString("branch"));
				s.setPhone(rs.getLong("phonenumber"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return s;
	}

	@Override
	public Student getStudent(long phone, String mail) {
		Student s = null;
		String query = "SELECT * FROM STUDENT WHERE MAIL = ? AND phonenumber = ?";
		PreparedStatement ps = null;
		Connection con = null;
		con = Connector.requestConnection();
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, mail);
			ps.setLong(2, phone);
			rs = ps.executeQuery();

			if (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setMail(rs.getString("mail"));
				s.setLocation(rs.getString("location"));
				s.setDate(rs.getString("date"));
				s.setPassword(rs.getString("password"));
				s.setBranch(rs.getString("branch"));
				s.setPhone(rs.getLong("phonenumber"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return s;
	}

	@Override
	public ArrayList<Student> getStudent() {
		PreparedStatement ps = null;
		String query = "SELECT * FROM STUDENT WHERE id!=1";
		ArrayList<Student> list = new ArrayList<>();
		Student s = null;
		try {
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setMail(rs.getString("mail"));
				s.setLocation(rs.getString("location"));
				s.setDate(rs.getString("date"));
				s.setPassword(rs.getString("password"));
				s.setBranch(rs.getString("branch"));
				s.setPhone(rs.getLong("phonenumber"));
				list.add(s);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public ArrayList<Student> getStudent(String name) {
		PreparedStatement ps = null;
		String query = "SELECT * FROM STUDENT WHERE NAME=?";
		ArrayList<Student> list = new ArrayList<>();
		Student s = null;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				s = new Student();
				s.setName(rs.getString("name"));
				s.setLocation(rs.getString("location"));
				s.setBranch(rs.getString("branch"));
				list.add(s);
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

}
