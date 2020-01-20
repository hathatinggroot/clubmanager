package com.clubmanager.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class, SecurityConfig.class })
@Log4j
public class CommonTest {
	@Setter(onMethod_ = { @Autowired })
	private PasswordEncoder passwordEncoder;

	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;
	
//	@Test
	public void initAdmin() {
		String sql = "insert into tbl_members(userId, userPw, userName, auth) values(?,?,?,?)";
			Connection conn = null;
			PreparedStatement pstmt = null;

			try {
				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "admin");
				pstmt.setString(2, passwordEncoder.encode("admin"));
				pstmt.setString(3, "관리자 ");
				pstmt.setString(4, "ROLE_ADMIN");

				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
	}

//	@Test
	public void testInsertMember() {
		String sql = "insert into tbl_members(userId, userPw, userName, auth) values(?,?,?,?)";
		for (int i = 0; i < 100; i++) {
			Connection conn = null;
			PreparedStatement pstmt = null;

			try {
				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql);

				pstmt.setString(2, passwordEncoder.encode("pw" + i));
				
				if (i < 80) {
					pstmt.setString(1, "user" + i);
					pstmt.setString(3, "일반사용자 " + i);
					pstmt.setString(4, "ROLE_MEMBER");
				} else if (i < 90) {
					pstmt.setString(1, "manager" + i);
					pstmt.setString(3, "운영자" + i);
					pstmt.setString(4, "ROLE_OWNER");
				} else {
					pstmt.setString(1, "amdin" + i);
					pstmt.setString(3, "관리자 " + i);
					pstmt.setString(4, "ROLE_ADMIN");
				}

				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

		}
	}

	
	@Test
	public void initTestData() {
		// 1. 구단 A, B, C 생성   2. 각 구단의 구단주 ID ownerA, ownerB, ownerC 3. 구단별 memberA1~25, managerA26~30
//		String sql1 = "insert into tbl_clubs(clubName, clubCode, ownerId) values(?,?,?)";
		String sql2 = "insert into tbl_members(userId, userPw, userName, auth, clubCode) values(?,?,?,?,?)";
//		for (int i = 1; i <= 31; i++) {
			Connection conn = null;
			PreparedStatement pstmt = null;

			try {
				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql2);

//				pstmt.setString(2, passwordEncoder.encode("pw" + i));
				
//				if (i <= 25) {
					pstmt.setString(1, "neuru094");
					pstmt.setString(3, "이종관");
					
					
					pstmt.setString(2, passwordEncoder.encode("smfn1!"));
					pstmt.setString(4, "ROLE_MEMBER");
					pstmt.setString(5, "RGTJUHQIOJAJHAS");
//				} else if (i <= 30) {
//					pstmt.setString(1, "managerC" + i);
//					pstmt.setString(3, "manNameC" + i);
//					pstmt.setString(4, "ROLE_MEMBER");
//				} else {
//					pstmt.setString(1, "ownerC");
//					pstmt.setString(3, "ownNameC");
//					pstmt.setString(4, "ROLE_OWNER");
//					
//				}
//				pstmt.setString(1, "clubA");
//				pstmt.setString(2, "A");
//				pstmt.setString(3, "ownerA");
				
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

//		}
	}
	
	
	
//	@Test
	public void loginTest() {
		
	}
}
