package com.clubmanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.ClubStatisticDTO;
import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.mapper.RecordMapper;

import lombok.Setter;


@Service
public class StatisticsServiceImpl implements StatisticService {

	@Setter(onMethod_=@Autowired)
	private RecordMapper recordMapper;
	
	
	@Override
	public ClubStatisticDTO getClubStatistics(String clubCode) {
		
		List<MatchRecordVO> mrList = recordMapper.getMRList(clubCode);
		int matchNums = mrList.size();
		int win = 0;
		int draw = 0;
		int lose = 0;
		int goalSum = 0;
		int lostPointSum = 0;
		
		for(MatchRecordVO mrVO : mrList) {
			if(mrVO.getResults()==1) {
				win++;
			}else if(mrVO.getResults()==0) {
				draw++;
			}else {
				lose++;
			}
			
			goalSum += mrVO.getGoal()+mrVO.getExtraGoal();
			lostPointSum += mrVO.getLostPoint();
		}
		
		ClubStatisticDTO csDTO = new ClubStatisticDTO();
		csDTO.setMatchNums(matchNums);
		csDTO.setWin(win);
		csDTO.setDraw(draw);
		csDTO.setLose(lose);
		csDTO.setGoalSum(goalSum);
		csDTO.setLostPointSum(lostPointSum);
		
		
		
		return csDTO;
	}
}
