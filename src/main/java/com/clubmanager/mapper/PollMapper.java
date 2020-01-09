package com.clubmanager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.clubmanager.domain.PollMoMVO;
import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;

public interface PollMapper {
	public int insertPP(PollPartVO ppVO);
	
	public int deletePP(int matchNo);
	
	public List<PollPartVO> getPPList(String clubCode);
	
	public int insertPS(PollStatusDTO psDTO);
	
	public List<PollStatusDTO> getPSList(@Param("matchNo") int matchNo,@Param("pollType") int pollType);
	
	public PollPartVO getPP(@Param("clubCode") String clubCode,@Param("matchNo")  int matchNo);
	
	public int modifyPS(PollStatusDTO psDTO);
	
	public int modifyPP(PollPartVO ppVO);
	
	public int insertPM(PollMoMVO pmVO);
	
	public PollMoMVO getPM(String clubCode);
	
	public int modifyPM(PollMoMVO pmVO);
	
	public int picked(PollStatusDTO psDTO);
	
	public int deletePS(@Param("matchNo") int matchNo,@Param("pollType")  int pollType);
	
	public int deletePM(int matchNo);
}
