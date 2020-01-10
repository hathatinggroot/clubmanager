package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PersonalStatisticsDTO {
	private int rankTotal;
	private int rankMoM;
	private int rankGoal;
	private int rankAssist;
	private int rankSave;
	
	private int amountAttend;
	private int amountTotal;
	private int amountMoM;
	private int amountGoal;
	private int amountAssist;
	private int amountSave;
	
	private String userId;
	private String userName;
	
}
