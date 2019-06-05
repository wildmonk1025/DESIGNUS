package com.designus.www.dao;

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

}
