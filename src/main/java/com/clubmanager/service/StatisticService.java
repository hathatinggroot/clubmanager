package com.clubmanager.service;

import java.util.HashMap;
import java.util.List;

import com.clubmanager.domain.ClubStatisticDTO;
import com.clubmanager.domain.PersonalStatisticsDTO;

public interface StatisticService {
	
	public ClubStatisticDTO getClubStatistics(String clubCode);
	
	public HashMap<String, List<PersonalStatisticsDTO>> getRanker(String clubCode);
	
	public PersonalStatisticsDTO getPersonalStatistics(String userId);
}
