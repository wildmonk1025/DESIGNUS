package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Major;
import com.designus.www.bean.Report;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IadminDao {

	List<Report> getrepInfo();

	List<Major> gettransInfo();

	Report getWriteCheck(@Param("rp_num") int rp_num);

	boolean getpermit(int rp_num);

	boolean getperfmit(int rp_num);
  
  
}
