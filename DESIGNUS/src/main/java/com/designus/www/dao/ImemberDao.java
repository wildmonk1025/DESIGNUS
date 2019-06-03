package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Member;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImemberDao {

	boolean memberapplyInsert(Member mb);
  
  
}
