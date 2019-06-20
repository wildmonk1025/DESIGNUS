package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Sponsor;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.SponsorTender;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IsponsorDao {

	boolean getSponserwriterinsert(Sponsor sp);

	void SponsorImageInsert(Sponsor sp);

	List<Sponsor> productinfo();

	Sponsor getSponcheck(@Param("ss_num") int ss_num);

	boolean sponuploadInsert(Sponsor sp);

	boolean sponuploadfileup(Map<String, String> fMap);

	int getSponserwri(Sponsor sp);

	boolean sponTenderInsert(Sponsor sp);

	boolean sponbuy(Sponsor sp);

	Sponsor getDatecheck(Sponsor sp);

}
