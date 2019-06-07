package com.designus.www.userClass;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.designus.www.dao.ImemberDao;

public abstract class MemberServiceImpl implements ImemberDao {
	@Autowired
	private ImemberDao mDao;

	public MemberServiceImpl() {
		// TODO Auto-generated constructor stub
		System.out.println("MemberServiceImpl() 객체 생성");
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
