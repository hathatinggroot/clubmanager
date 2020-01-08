package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.PersonalRecordDTO;
import com.clubmanager.mapper.RecordMapper;

import lombok.Setter;

@Service
public class RecordServiceImpl implements RecordService {
	@Setter(onMethod_=@Autowired)
	private RecordMapper recordMapper;
	
	@Override
	public boolean attendMatch(PersonalRecordDTO prDTO) {
		int result = recordMapper.insertPR(prDTO);
		
		if(result == 1) {
			return true;
		}
		return false;
	}
	
	@Override
	public List<PersonalRecordDTO> getPRList(int matchNo) {
		List<PersonalRecordDTO> prList = new ArrayList<>();
		
		prList = recordMapper.getPRList(matchNo);
		
		return prList;
	}
	
	
}
