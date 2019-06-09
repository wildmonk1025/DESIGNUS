package com.designus.www.userClass;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.transaction.annotation.Transactional;

import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
import com.designus.www.service.MailHandler;
import com.designus.www.service.TempKey;

public abstract class MemberServiceImpl implements ImemberDao {
	@Autowired
	private ImemberDao mDao;

	public MemberServiceImpl() {
		// TODO Auto-generated constructor stub
		System.out.println("MemberServiceImpl() 객체 생성");
	}

	@Autowired
	private JavaMailSender mailSender;

	@Override
	@Transactional
	public void create(Member mb) throws Exception {
		mDao.create(mb);

		// 임의의 authkey 생성
		String authkey = new TempKey().getKey(50, false);

		mb.setAuthkey(authkey);
		mDao.updateAuthkey(mb);

		// mail 작성 관련
		MailHandler mailhd = new MailHandler(mailSender);

		mailhd.setSubject("[Hoon's Board v2.0] 회원가입 이메일 인증");
		mailhd.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>").append("<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>")
				.append("<a href='http://localhost:8080/user/joinConfirm?uid=").append(mb.getMb_id()).append("&email=")
				.append(mb.getMb_email()).append("&authkey=").append(authkey).append("' target='_blenk'>이메일 인증 확인</a>")
				.toString());
		mailhd.setFrom("관리자 ", "관리자명");
		mailhd.setTo(mb.getMb_email());
		mailhd.send();
	}
	/*
	 * @Override public boolean memberapplyInsert(Member mb) { // TODO
	 * Auto-generated method stub return false; }
	 * 
	 * @Override public boolean wrimemberapplyInsert(Member mb) { // TODO
	 * Auto-generated method stub return false; }
	 * 
	 * @Override public boolean wrimajorInsert(Major mj) { // TODO Auto-generated
	 * method stub return false; }
	 * 
	 * @Override public String getSecurityPwd(String mb_id) { // TODO Auto-generated
	 * method stub return null; }
	 * 
	 * @Override public Member getMemberInfo(String mb_id) { // TODO Auto-generated
	 * method stub return null; }
	 */

}
