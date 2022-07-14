package com.starbuck.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class ConnectionTest {
	@Test
	public void test() {
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/starbucks","root","as4503^^");
			System.out.println("success!");
		}catch(Exception e){System.out.println(e);}
	}

}
