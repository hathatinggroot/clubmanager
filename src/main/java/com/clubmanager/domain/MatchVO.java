package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MatchVO {
	private int matchNo;
	private String apposingTeam;
	private Date matchDate;
	private String stadium;
	private int matchStatus; // 0: 미확정된 경기   , 1:확정된 경기, 2:종료된 경기
	private int matchRecordStatus; // 0:미기록, 1:기록중, 2:기록 완료
	private String clubCode;
	
	private int pollTime;
	
	private PollPartVO ppVO;
	
}
