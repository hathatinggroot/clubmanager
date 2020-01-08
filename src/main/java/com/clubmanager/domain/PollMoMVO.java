package com.clubmanager.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PollMoMVO {
	private Date endDate;
	private int matchNo;
	private String clubCode;
	
	private MatchVO matchVO;
	private List<PersonalRecordDTO> prList;
	private List<PollStatusDTO> psList;
}
