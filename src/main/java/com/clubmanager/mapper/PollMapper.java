package com.clubmanager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;

public interface PollMapper {
	public int insertPP(PollPartVO ppVO);
	
	public int deletePP(int matchNo);
	
	public List<PollPartVO> getPPList(String clubCode);
	
	public int insertPS(PollStatusDTO psDTO);
	
	public List<PollStatusDTO> getPSList(PollPartVO ppVO);
	
	public PollPartVO getPP(@Param("clubCode") String clubCode,@Param("matchNo")  int matchNo);
	
	public int modifyPS(PollStatusDTO psDTO);
	
	public int modifyPP(PollPartVO ppVO);
}
