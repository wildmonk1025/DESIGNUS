package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Member;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImypageDao {

	Member privacyeditSelect(String id);

	boolean memberreviseupdate(Member mb);

	String withdrawalconfirmselect(String id);

	void withdrawalconfirmDelete(Member mb);

	Member withdrawalconfirmselect2(String mb_id);

	boolean withdrawalconfirmInsert(Member mmd);

	boolean nortowriapplyInsert(Map<String, String> fMap);
  
  
}
