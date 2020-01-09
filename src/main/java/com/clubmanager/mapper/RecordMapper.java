package com.clubmanager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.domain.PersonalRecordDTO;

public interface RecordMapper {
	
	public int insertPR(PersonalRecordDTO prDTO);
	
	public int deletePR(PersonalRecordDTO prDTO);
	
	public List<PersonalRecordDTO> getPRList(int matchNo);
	
	public MatchRecordVO getMR(int matchNo );
	
	public int insertMR(int matchNo);

	public int modifyPR(PersonalRecordDTO prDTO);
	
	public int modifyMR(MatchRecordVO mrVO);
	
	public int picked(PersonalRecordDTO prDTO);
	
	public int writeMoM(@Param("userName") String userName, @Param("matchNo") int matchNo);
	
	public List<MatchRecordVO> getMRList(String clubCode);
}
