package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PersonalRecordDTO {
	private int total;
	private int mom;
	private int goals;
	private int assists;
	private int saves;
	private String userId;
	private int matchNo;
}
