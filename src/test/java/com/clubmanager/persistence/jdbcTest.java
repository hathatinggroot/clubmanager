package com.clubmanager.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class jdbcTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConn() {
		try {Connection con =
			DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/clubmanagerdb?userSSL=false",
					"clubmanager",
					"clubmanager"
					);
			log.info(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
