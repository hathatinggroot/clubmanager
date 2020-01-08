package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.domain.PersonalRecordDTO;

public interface RecordService {
	public boolean attendMatch(PersonalRecordDTO prDTO);
	
	public List<PersonalRecordDTO> getPRList(int matchNo);
	
	public MatchRecordVO getMR(int matchNo);
}
