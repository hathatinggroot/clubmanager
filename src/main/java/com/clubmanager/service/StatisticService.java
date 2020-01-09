package com.clubmanager.service;

import com.clubmanager.domain.ClubStatisticDTO;

public interface StatisticService {
	
	public ClubStatisticDTO getClubStatistics(String clubCode);
}
