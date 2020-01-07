package com.clubmanager.mapper;

import com.clubmanager.domain.PersonalRecordDTO;

public interface RecordMapper {
	
	public int insertPR(PersonalRecordDTO prDTO);
	
	public int deletePR(PersonalRecordDTO prDTO);
}
