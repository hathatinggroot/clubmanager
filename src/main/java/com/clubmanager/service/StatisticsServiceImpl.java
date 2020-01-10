package com.clubmanager.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.ClubStatisticDTO;
import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.domain.PersonalRecordDTO;
import com.clubmanager.domain.PersonalStatisticsDTO;
import com.clubmanager.mapper.MemberMapper;
import com.clubmanager.mapper.RecordMapper;

import lombok.Setter;


@Service
public class StatisticsServiceImpl implements StatisticService {

	@Setter(onMethod_=@Autowired)
	private RecordMapper recordMapper;
	
	@Setter(onMethod_=@Autowired)
	private MemberMapper memberMapper;
	
	
	@Override
	public ClubStatisticDTO getClubStatistics(String clubCode) {
		
		List<MatchRecordVO> mrList = recordMapper.getOverMRList(clubCode);
		int matchNums = mrList.size();
		int win = 0;
		int draw = 0;
		int lose = 0;
		int goalSum = 0;
		int lostPointSum = 0;
		
		for(MatchRecordVO mrVO : mrList) {
			if(mrVO.getResults()==1) {
				win++;
			}else if(mrVO.getResults()==2) {
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
	
	@Override
	public HashMap<String, List<PersonalStatisticsDTO>> getRanker(String clubCode) {
		HashMap<String, List<PersonalStatisticsDTO>> rankerMap = new HashMap<String, List<PersonalStatisticsDTO>>();
		
		List<PersonalStatisticsDTO> PSDTOList = new ArrayList<PersonalStatisticsDTO>();
		List<PersonalStatisticsDTO> totalList = new ArrayList<PersonalStatisticsDTO>();
		List<PersonalStatisticsDTO> momList = new ArrayList<PersonalStatisticsDTO>();
		List<PersonalStatisticsDTO> goalList = new ArrayList<PersonalStatisticsDTO>();
		List<PersonalStatisticsDTO> assistList = new ArrayList<PersonalStatisticsDTO>();
		List<PersonalStatisticsDTO> saveList = new ArrayList<PersonalStatisticsDTO>();
		
		List<MemberVO> memberList = memberMapper.getClubMembers(clubCode);
		for(MemberVO mvo : memberList) {
			PSDTOList.add(getPersonalStatistics(mvo.getUserId()));
		}
		
		PSDTOList.sort((a,b)->{
			if(a.getAmountTotal() - b.getAmountTotal() != 0) {
				return b.getAmountTotal() - a.getAmountTotal();
			}else {
				return a.getAmountAttend() - b.getAmountAttend();
			}
		});
		int i=1;
		for(PersonalStatisticsDTO psDTO : PSDTOList) {
			psDTO.setRankTotal(i++);
			totalList.add(psDTO);
		}
		rankerMap.put("total", totalList);
		
		PSDTOList.sort((a,b)->{
			if(a.getAmountMoM() - b.getAmountMoM() != 0) {
				return b.getAmountMoM() - a.getAmountMoM();
			}else {
				return a.getAmountAttend() - b.getAmountAttend();
			}
		});
		i=1;
		for(PersonalStatisticsDTO psDTO : PSDTOList) {
			psDTO.setRankMoM(i++);
			momList.add(psDTO);
		}
		rankerMap.put("mom", momList);
		
		PSDTOList.sort((a,b)->{
			if(a.getAmountGoal() - b.getAmountGoal() != 0) {
				return b.getAmountGoal() - a.getAmountGoal();
			}else {
				return a.getAmountAttend() - b.getAmountAttend();
			}
		});
		i=1;
		for(PersonalStatisticsDTO psDTO : PSDTOList) {
			psDTO.setRankGoal(i++);
			goalList.add(psDTO);
		}
		rankerMap.put("goal", goalList);
		
		PSDTOList.sort((a,b)->{
			if(a.getAmountAssist() - b.getAmountAssist() != 0) {
				return b.getAmountAssist() - a.getAmountAssist();
			}else {
				return a.getAmountAttend() - b.getAmountAttend();
			}
		});
		i=1;
		for(PersonalStatisticsDTO psDTO : PSDTOList) {
			psDTO.setRankAssist(i++);
			assistList.add(psDTO);
		}
		rankerMap.put("assist", assistList);
		
		PSDTOList.sort((a,b)->{
			if(a.getAmountSave() - b.getAmountSave() != 0) {
				return b.getAmountSave() - a.getAmountSave();
			}else {
				return a.getAmountAttend() - b.getAmountAttend();
			}
		});
		i=1;
		for(PersonalStatisticsDTO psDTO : PSDTOList) {
			psDTO.setRankSave(i++);
			saveList.add(psDTO);
		}
		rankerMap.put("save", saveList);
		
		
		return rankerMap;
		
		
	}
	
	
	@Override
	public PersonalStatisticsDTO getPersonalStatistics(String userId) {
		PersonalStatisticsDTO psDTO = new PersonalStatisticsDTO();
		psDTO.setUserId(userId);
		
		List<PersonalRecordDTO> prList = recordMapper.getAllPR(userId);
		for(PersonalRecordDTO pr : prList) {
			psDTO.setAmountAttend(psDTO.getAmountAttend()+1);
			psDTO.setAmountTotal(psDTO.getAmountTotal() + pr.getTotal());
			psDTO.setAmountMoM(psDTO.getAmountMoM() + pr.getMom());
			psDTO.setAmountGoal(psDTO.getAmountGoal() + pr.getGoals());
			psDTO.setAmountAssist(psDTO.getAmountAssist() + pr.getAssists());
			psDTO.setAmountSave(psDTO.getAmountSave() + pr.getSaves());
			psDTO.setUserName(pr.getUserName());
		}
		
		
		return psDTO;
	}
}
