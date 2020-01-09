package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ClubStatisticDTO {
	private int matchNums;
	private int win;
	private int draw;
	private int lose;
	private int goalSum;
	private int lostPointSum;
}
