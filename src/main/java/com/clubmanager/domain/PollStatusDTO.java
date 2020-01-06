package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PollStatusDTO {
	private int matchNo;
	private String userId;
	private String userName;
	private int pollType;
	private int status;
}
