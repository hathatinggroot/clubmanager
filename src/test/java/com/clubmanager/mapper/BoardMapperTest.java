package com.clubmanager.mapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class, SecurityConfig.class })
@Log4j
public class BoardMapperTest {

	@Setter(onMethod_ = @Autowired)
	private DataSource dataSource;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

//	@Test
	public void initTestData() {
		for (int i = 1; i <= 50; i++) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				String sql = "insert into tbl_freeboard(boardNo, boardTitle, boardContent, boardWriter, clubCode, boardTop) "
						+ "values(?,?,?,?,?,?)";

				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i+100);
				pstmt.setString(2, "title_C_" + i);
				pstmt.setString(3, "content_C_" + i);
				pstmt.setString(5, "C");
				if (i <= 40) {
					pstmt.setString(4, "memberC1");
					pstmt.setInt(6, 0);
				} else {
					if (i > 48)
						pstmt.setInt(6, 1);
					else
						pstmt.setInt(6, 0);
					pstmt.setString(4, "ownerC");
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
	public void getBoardListTest() {
		log.info("getBoardList.............");
		Criteria cri = new Criteria();
		cri.setClubCode("A");
			List<BoardVO> boardList = boardMapper.getBoardList(cri);
			log.info("getBoardList............."+boardList);
	}
	
//	@Test
	public void insertTest() {
		log.info("insert.............");
			BoardVO boardVO = new BoardVO();
//			boardVO.set
//			boardMapper.getBoardList("A");
//			log.info("getBoardList............."+boardList);
	}
	
}
