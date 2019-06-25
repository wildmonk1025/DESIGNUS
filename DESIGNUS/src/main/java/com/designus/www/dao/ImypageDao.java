package com.designus.www.dao;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.AloneQuestion;
import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Board;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.Notify;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.SponsorTender;
import com.designus.www.bean.revAuctionProgress;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImypageDao {

	Member privacyeditSelect(String id);

	boolean memberreviseupdate(Member mb);

	String withdrawalconfirmselect(String id);

	void withdrawalconfirmDelete(Member mb);

	Member withdrawalconfirmselect2(String mb_id);

	boolean withdrawalconfirmInsert(Member mmd);

	boolean nortowriapplyInsert(Major mj);

	boolean nortowriapplyupdate(String mj_id);

	List<Basket> basketAuctionselect(String id);

	List<Basket> basketRevAuctionselect(String id);

	List<Basket> basketSponsorselect(String id);

	List<Basket> basketFrmSelect(@Param("num") int num,@Param("id") String id);

	int getBoardCount(String id);

	List<Basket> basketFrmRSelect(@Param("num") int num,@Param("id") String id);

	List<Basket> basketFrmSSelect(@Param("num") int num,@Param("id") String id);

	int getrevCount(String id);

	int getsponCount(String id);

	List<AuctionProgress> auctionMyOrderListSelect(@Param("id") String id,@Param("num") int num);

	

	int getSetpCount(String id);



	boolean requestby(AuctionProgress ap);

	boolean aucapplyMbNupdate(AuctionProgress ap);

	boolean aucapplyMbWupdate(AuctionProgress ap);

	boolean reviewBoardyhWriteupDate(AuctionProgress ap);

	boolean auccancelDelete(AuctionProgress ap);

	List<AuctionProgress> auctionMyAcceptListSelect(@Param("id") String id,@Param("num") int num);

	int getSetpWCount(String id);

	boolean delinumuploadupdate(AuctionProgress ap);

	AuctionProgress enterSelect(AuctionProgress ap);

	boolean autcancelDelete(AuctionProgress ap);

	AuctionProgress sendsSelect(AuctionProgress ap);

	AuctionProgress scheckSelect(AuctionProgress ap);

	AuctionProgress reviewboardSelect(AuctionProgress ap);

	boolean memberpointup(AuctionProgress ap);

	List<revAuctionProgress> revAuctionMyOrderListSelect(@Param("id") String id,@Param("num") int num);

	int getreSetpCount(String id);

	revAuctionProgress requestSelect(revAuctionProgress rap);

	boolean requestbyupdate(revAuctionProgress rap);

	boolean requestbyREVupdate(revAuctionProgress rap);

	revAuctionProgress revauccancelSelect(revAuctionProgress rap);

	boolean revaucinfocancelDelete(revAuctionProgress rap);

	boolean revaucinfocancelupDate(revAuctionProgress rap);

	boolean revaucinfocancelInsert(Notify ni);

	List<revAuctionProgress> revAuctionMyAcceptList(@Param("id") String id,@Param("num") int num);

	int getreASetpCount(String id);

	revAuctionProgress delinumSelect(revAuctionProgress ap);

	boolean revdelinumupload(revAuctionProgress rap);

	revAuctionProgress boardwriteSelect(revAuctionProgress rap);

	boolean revmemberpointup(revAuctionProgress rap);

	boolean revBoardyhWriteupDate(revAuctionProgress rap);

	Member mypagemoveSelect(String id);

	List<Notify> notismypageSelect(String id);

	boolean fullDelete(String id);

	boolean nodelete(Notify nf);

	List<AuctionTender> auctionInfoSelect(String id);

	List<Integer> auctionMaxSelect(@Param("aut_aunum") int aut_aunum);

	boolean AuctionGiveUpDelete(AuctionTender at);

	int gold(String id);

	int silver(String id);

	int copper(String id);

	AuctionProgress auccancelDeleteDel(AuctionProgress ap);

	List<AloneQuestion> questionlist(@Param("id") String id,@Param("num") int num);

	 List<QuestionReply> questionalistSelect(@Param("aq_num") int aq_num);

	int getAqpagingCount(String id);

	AloneQuestion questionreadSelct(AloneQuestion aq);

List<SponsorProgress> fundingAcceptListSelect(@Param("id") String id,@Param("num") int num);

int getSuwonCountt(String id);

List<Integer> SponsorTenderSelect(SponsorProgress sponsorProgress);

boolean supportupdate(SponsorProgress sp);

List<Map<String, String>> getOpPeriodList();


List<SponsorProgress> fundingOrderListSelect(@Param("id") String id,@Param("num") int num);

List<Integer> fundingOrderLisSelect(SponsorProgress sponsorProgress);

int getSuonCountt(String id);

void setNotifyWriApply(Notify nf);

List<LocalDateTime> deadlineSelect();

boolean deadlineupdate();

List<SponsorProgress> deadlineuSelecte(LocalDateTime localDateTime);

boolean deadlineupdate(SponsorProgress sponsorProgress);

SponsorProgress fundapplySelect(SponsorProgress sp);
boolean funddeliuploadupdate(SponsorProgress sp);

List<SponsorProgress> funddeliinfoSelect(SponsorProgress sp);

SponsorProgress funddelinumSelect(SponsorProgress sp);

boolean funddelinumuploadupdate(SponsorProgress sp);

SponsorProgress SponBoardWriteupdate(SponsorProgress sp);

int pointcheck(Member mb);

boolean memberupdatespon(Member mb);

boolean sponsorupdatettt(SponsorProgress sp);

boolean WriteAReviewspon(Board bd);

List<SponsorProgress> sponsorProgress(String id);

boolean stepfiveupDate(revAuctionProgress rap);

boolean stepfiveDelete(revAuctionProgress rap);

boolean stepfiveautDelete(revAuctionProgress rap);

String getAuTrackId(AuctionProgress ap);

void setNotifyAuTrack(Notify nf);

String getRaTrackId(revAuctionProgress rap);

void setNotifyRaTrack(Notify nf);

boolean fuddememberupdate(SponsorProgress sp);

	/* int getSppagingCountt(String id); */

  
}
