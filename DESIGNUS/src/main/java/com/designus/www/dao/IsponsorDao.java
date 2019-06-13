package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Sponsor;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IsponsorDao {

	int getSponserwri(Sponsor sp);

	boolean getSponserwriterinsert(Sponsor sp);

	void SponsorImageInsert(Sponsor sp);
}
