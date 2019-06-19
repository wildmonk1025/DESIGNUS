package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Category;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.MemberSearch;
import com.designus.www.bean.Question;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.Report;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IadminDao {

	List<MemberSearch> getrepInfo();

	List<MemberSearch> gettransInfo();

	Report getWriteCheck(@Param("rp_num") int rp_num);

	boolean getPermit(@Param("rp_num") int rp_num);

	boolean getPerfmit(@Param("rp_num") int rp_num);

	boolean getwarning(@Param("mb_id")String mb_id);

	List<MemberSearch> gettransforInfo();

	MemberSearch permitWriDetail(@Param("mb_id")String mb_id);

	boolean getreAuthorfuse(@Param("mb_id")String mb_id);

	boolean getreAuthoragree(@Param("mb_id")String mb_id);

	boolean getreAuthordelete(@Param("mb_id")String mb_id);

	List<Question> getquestionInfo();

	Question getquestionCheck(@Param("aq_num") int aq_num);

	boolean getquestionReply(Map<String,Object> map);

	List<Member> getmemberList();

	List<Member> getmemberAuthorList();

	List<Member> getmemberBlackList();

	MemberSearch getMemberCheck(@Param("mb_id") String mb_id);

	boolean getmembercouet(@Param("mb_id")String mb_id);

	boolean getmemberminuscouet(@Param("mb_id")String mb_id);

	List<Category> getcategoryList();

	//boolean getcotegoryadd(Map<String, Object> map);

	boolean getcotegoryadd(@Param("cg_code") int cg_code,@Param("cg_name") String cg_name);

	boolean getcotegorydel(@Param("cg_name") String cg_name);

	boolean getcotegoryChange(@Param("cg_name") String cg_name, @Param("cg_cname")String cg_cname);

  
}
