package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.PersonalRecordDTO;

public interface RecordMapper {
	
	public int insertPR(PersonalRecordDTO prDTO);
	
	public int deletePR(PersonalRecordDTO prDTO);
	
	public List<PersonalRecordDTO> getPRList(int matchNo);
	
	
}
