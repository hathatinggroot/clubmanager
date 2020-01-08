package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.PollMoMVO;
import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;

public interface PollService {
	public List<PollPartVO> getPPList(String clubCode);
	
	public List<PollStatusDTO> getPSList(int matchNo, int pollType);
	
	public PollPartVO getPP(String clubCode, int matchNo);
	
	public boolean vote(PollStatusDTO psDTO);
	
	public boolean modifyPP(PollPartVO ppVO);
	
	public PollMoMVO getPM(String clubCode);
	
	public boolean modifyPM(PollMoMVO pmVO);
}
