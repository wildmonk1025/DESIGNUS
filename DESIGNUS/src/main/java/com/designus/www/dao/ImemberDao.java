package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImemberDao {

	boolean memberapplyInsert(Member mb);

	boolean wrimemberapplyInsert(Member mb);

	boolean wrimajorInsert(Major mj);

	String getSecurityPwd(String mb_id);

	Member getMemberInfo(String mb_id);

	int memberlapcheck(String mbid);

	String memberFind(Member mb_id);



	String getmembernameInfo(String mb_name);

	Member getMemberemailInfo(String mb_email);

}
