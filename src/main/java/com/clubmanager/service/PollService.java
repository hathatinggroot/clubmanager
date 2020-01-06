package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;

public interface PollService {
	public List<PollPartVO> getPPList(String clubCode);
	
	public List<PollStatusDTO> getPSList(PollPartVO ppVO);
	
	public PollPartVO getPP(String clubCode, int matchNo);
}
