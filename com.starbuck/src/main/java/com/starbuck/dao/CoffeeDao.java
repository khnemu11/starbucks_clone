package com.starbuck.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.starbuck.bean.Coffee;

public class CoffeeDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/starbucks", "root", "as4503^^");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Coffee u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into starbucks.coffee (name_kr, "
							+ "name_en, type, description_summary,"
							+ " description_detail, design_story,coffee_tasting_note"
							+ ",enjoy_with, relative) \r\n"
							+ "values (?,?,?,?,?,?,?,?,?);");
			
			  ps.setString(1,u.getName_kr()); 
			  ps.setString(2,u.getName_en());
			  ps.setString(3,u.getType()); 
			  ps.setString(4,u.getDescription_summary());
			  ps.setString(5,u.getDescription_detail());
			  ps.setString(6,u.getDesign_story());
			  ps.setString(7,u.getCoffee_tasting_note());
			  ps.setString(8,u.getEnjoy_with());
			  ps.setString(9,u.getRelative());
			 
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Coffee u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update starbucks.coffee set name_kr=?,name_en=?,"
							+ "type=?,description_summary=?,description_detail=?,design_story=?,"
							+ "coffee_tasting_note=?,enjoy_with=?, relative=? where seq=?");

			  ps.setString(1,u.getName_kr()); 
			  ps.setString(2,u.getName_en());
			  ps.setString(3,u.getType()); 
			  ps.setString(4,u.getDescription_summary());
			  ps.setString(5,u.getDescription_detail());
			  ps.setString(6,u.getDesign_story());
			  ps.setString(7,u.getCoffee_tasting_note());
			  ps.setString(8,u.getEnjoy_with());
			  ps.setString(9,u.getRelative());
			  ps.setLong(10,u.getSeq());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Coffee u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from starbucks.coffee where seq=?");
			ps.setLong(1,u.getSeq());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Coffee> getAllRecords() {
		List<Coffee> list = new ArrayList<Coffee>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from starbucks.coffee");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Coffee u = new Coffee();
				
				u.setSeq(rs.getLong("seq"));
				u.setCoffee_tasting_note(rs.getString("name_kr"));
				u.setName_kr(rs.getString("name_kr"));
				u.setName_en(rs.getString("name_en"));
				u.setType(rs.getString("type"));
				u.setDescription_detail(rs.getString("description_detail"));
				u.setDescription_summary(rs.getString("description_summary"));
				u.setDesign_story(rs.getString("design_story"));
				u.setCoffee_tasting_note(rs.getString("coffee_tasting_note"));
				u.setEnjoy_with(rs.getString("enjoy_with"));
				u.setRelative(rs.getString("relative"));
				
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static Coffee getRecordBySeq(int seq) {
		System.out.println("getRecordBySeq start");
		Coffee u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from starbucks.coffee where seq=?");
			ps.setLong(1, seq);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Coffee();
				u.setSeq(rs.getLong("seq"));
				u.setName_kr(rs.getString("name_kr"));
				u.setName_en(rs.getString("name_en"));
				u.setType(rs.getString("type"));
				u.setDescription_detail(rs.getString("description_detail"));
				u.setDescription_summary(rs.getString("description_summary"));
				u.setDesign_story(rs.getString("design_story"));
				u.setCoffee_tasting_note(rs.getString("coffee_tasting_note"));
				u.setTasting_notes(rs.getString("tasting_notes"));
				u.setEnjoy_with(rs.getString("enjoy_with"));
				u.setRelative(rs.getString("relative"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
