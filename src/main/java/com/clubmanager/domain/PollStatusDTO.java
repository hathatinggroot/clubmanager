package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PollStatusDTO {
	private int matchNo;
	private String userId;
	private String userName;
	private int pollType; //--1: participate , 2: MoM
	private int status; //-- 0: 미투표, 1:투표 or 참석  2: 미참석 
	private int picked; // MoM 득표수
}
