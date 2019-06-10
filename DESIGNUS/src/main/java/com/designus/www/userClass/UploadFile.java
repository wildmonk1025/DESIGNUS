package com.designus.www.userClass;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.ImemberDao;
import com.designus.www.dao.ImypageDao;

@Component
public class UploadFile {
	// 파일 업로드 메소드
	// String
	// fullPath="D:/Work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SpringMVC-Board/resources/upload";
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private ImypageDao pDao;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private HttpSession session;

	public boolean fileUp(MultipartHttpServletRequest multi, Member mb, String kind) {
		// Member
		System.out.println("id=" + mb.getMb_id());
		System.out.println("pw=" + mb.getMb_pw());
		System.out.println("name=" + mb.getMb_name());
		System.out.println("birth=" + mb.getMb_birth());
		System.out.println("address=" + mb.getMb_address());
		System.out.println("email=" + mb.getMb_email());
		System.out.println("mb_profile=" + mb.getMb_profile());
		// Major

		System.out.println("fileUp");
		// 1.이클립스의 물리적 저장경로 찾기
		String root = multi.getSession().getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/upload/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		}
		// 3.파일을 가져오기-파일태그 이름들 반환
		// String files=multi.getFileNames(); //파일태그가 2개이상일때
		// List<MultipartFile> file = multi.getFiles("b_files");
		MultipartFile file = multi.getFile("mb_profile");

		// fMap.put("bnum", String.valueOf(bnum));
		boolean f = false;

		// 파일 메모리에 저장
		MultipartFile mf = file; // 실제 업로드될 파일
		String oriFileName = file.getOriginalFilename(); // a.txt
		
		// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
		String sysFileName = System.currentTimeMillis() + "." + oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
		System.out.println("sys=" + sysFileName);
		System.out.println("ori=" + oriFileName);
		mb.setMb_profile(sysFileName);
		// 5.메모리->실제 파일 업로드
		/*
		 * System.out.println(session.getAttribute("id").toString());
		 * System.out.println("세션 확인");
		 */
		try {
			mf.transferTo(new File(path + sysFileName));
			if (kind.equals("A")) {
				f = mDao.memberapplyInsert(mb);
			} else {
				f = pDao.memberreviseupdate(mb);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		// for End

		if (f)
			return true;
		return false;
	}

	public int fileUp(MultipartHttpServletRequest multi, RevAuction ra) {
		System.out.println("multi 파라미터와 ra받는 fileUp");
		// 1.이클립스의 물리적 저장경로 찾기
		String root = multi.getSession().getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/upload/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		}
		// 3.파일을 가져오기-파일태그 이름들 반환
		// String files=multi.getFileNames(); //파일태그가 2개이상일때
		// List<MultipartFile> file = multi.getFiles("files"); //★★★AJAX로 할 경우 이걸로 사용
		// List<MultipartFile> file = multi.getFiles("b_files"); //★★★form태그로 할 경우 이걸로
		// 사용

		MultipartFile file1 = multi.getFile("ra_image");
		MultipartFile file2 = multi.getFile("ra_file");
		// files.add(0, multi.getFile("ra_image"));
		// files.add(1, multi.getFile("ra_file"));

		String oriFileName1 = file1.getOriginalFilename();
		String oriFileName2 = file2.getOriginalFilename();

		System.out.println(oriFileName1);
		System.out.println(oriFileName2);

		// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
		String sysFileName1 = (System.currentTimeMillis() + 1) + "."
				+ oriFileName1.substring(oriFileName1.lastIndexOf(".") + 1);
		String sysFileName2 = (System.currentTimeMillis() + 2) + "."
				+ oriFileName2.substring(oriFileName2.lastIndexOf(".") + 1);

		ra.setRa_image(sysFileName1);
		ra.setRa_file(sysFileName2);

		System.out.println("sys=" + sysFileName1);
		System.out.println("sys=" + sysFileName2);

		// 5.메모리->실제 파일 업로드
		/*
		 * System.out.println(session.getAttribute("id").toString());
		 * System.out.println("세션 확인");
		 */

		try {
			file1.transferTo(new File(path + sysFileName1));
			file2.transferTo(new File(path + sysFileName2));
			System.out.println("PC로컬경로에 파일 업로드 완료");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		int flag = rDao.revAuctionSubmitInsert(ra);
		// flag는 원래 insert여부를 확인하기 위함 이였으나, 게시한 글 번호를 selectKey로 반환하기 위한 겸용으로 사용하였다.
		// System.out.println("ra_num값="+ra.getRa_num());
		flag = ra.getRa_num();

		return flag;
	}

	// 파일 다운로드
	public void download(String fullPath, String oriFileName, HttpServletResponse resp) throws Exception {

		// 한글파일 깨짐 방지
		String downFile = URLEncoder.encode(oriFileName, "UTF-8");
		// 파일명 뒤에 이상한 문자가 붙는 경우 아래코드 해결
		// downFile=downFile.replaceAll("//+","");
		System.out.println("왜 나만 안되는 거야...ㅠㅠ=" + oriFileName);
		// 파일 객체 생성
		File file = new File(fullPath);
		// 다운로드 경로 파일을 읽어 들임
		InputStream is = new FileInputStream(file);
		// 반환객체설정
		resp.setContentType("application/octet-stream");
		resp.setHeader("content-Disposition", "attachment; filename=\"" + downFile + "\"");// attachment 첨부
		// 반환객체에 스트림 연결
		OutputStream os = resp.getOutputStream();

		// 파일쓰기
		byte[] buffer = new byte[1024];
		int length;
		while ((length = is.read(buffer)) != -1) {
			os.write(buffer, 0, length);
		}
		os.flush();
		os.close();
		is.close();
	}

	public boolean fileUp(MultipartHttpServletRequest multi, Member mb, String kind, Major mj) {
		// Member
		System.out.println("id=" + mb.getMb_id());
		System.out.println("pw=" + mb.getMb_pw());
		System.out.println("name=" + mb.getMb_name());
		System.out.println("birth=" + mb.getMb_birth());
		System.out.println("address=" + mb.getMb_address());
		System.out.println("email=" + mb.getMb_email());
		System.out.println("mb_profile=" + mb.getMb_profile());
		// Major
		System.out.println("mjid=" + mj.getMj_id());
		System.out.println("mjcate=" + mj.getMj_cg_code());
		System.out.println("mjport=" + mj.getMj_portf());
		System.out.println("mjlike=" + mj.getMj_like());
		/* System.out.println("mjcontents=" + mj.getMj_contents()); */

		System.out.println("fileUp");
		// 1.이클립스의 물리적 저장경로 찾기
		String root = multi.getSession().getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/upload/";
		String path2 = root + "resources/port/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		File dir2 = new File(path2);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		}
		if (!dir2.isDirectory()) {
			dir2.mkdirs();
		}
		// 3.파일을 가져오기-파일태그 이름들 반환
		// String files=multi.getFileNames(); //파일태그가 2개이상일때
		// List<MultipartFile> file = multi.getFiles("b_files");
		MultipartFile file = multi.getFile("mb_profile");
		MultipartFile file2 = multi.getFile("mj_portf");

		// fMap.put("bnum", String.valueOf(bnum));
		boolean f = false;

		// 파일 메모리에 저장
		// MultipartFile mf = file; // 실제 업로드될 파일
		String oriFileName = file.getOriginalFilename(); // a.txt
		String oriFileName2 = file2.getOriginalFilename();
		mb.setMb_profile(oriFileName);
		mj.setMj_portf(oriFileName2);
		// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
		String sysFileName = System.currentTimeMillis() + "." + oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
		String sysFileName2 = System.currentTimeMillis() + "."
				+ oriFileName2.substring(oriFileName2.lastIndexOf(".") + 1);
		System.out.println("sys=" + sysFileName);
		System.out.println("ori=" + oriFileName);
		System.out.println("sys2=" + sysFileName2);
		System.out.println("ori2=" + oriFileName2);

		// 5.메모리->실제 파일 업로드
		/*
		 * System.out.println(session.getAttribute("id").toString());
		 * System.out.println("세션 확인");
		 */
		try {
			file.transferTo(new File(path + sysFileName));
			file2.transferTo(new File(path2 + sysFileName2));
			if (kind.equals("S")) {
				System.out.println("일로 넘어오나?");
				f = mDao.wrimemberapplyInsert(mb);
				if (f) {
					System.out.println("major테이블에 추가한다");
					f = mDao.wrimajorInsert(mj);
				}
			} else {
				System.out.println("넘어오나봐");
				f = pDao.memberreviseupdate(mb);
			}

		} catch (IOException e) {
			System.out.println("님 코드 다 망했어");
			e.printStackTrace();
		}
		// for End

		if (f)
			return true;
		return false;
	}

	public boolean swfileUp(MultipartHttpServletRequest multi, Major mj) {
		System.out.println("fileUp");
		// 1.이클립스의 물리적 저장경로 찾기
		String root = multi.getSession().getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/upload/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		}
		// 3.파일을 가져오기-파일태그 이름들 반환
		// String files=multi.getFileNames(); //파일태그가 2개이상일때
		// List<MultipartFile> file = multi.getFiles("b_files");
		MultipartFile file = multi.getFile("mj_portf");

		// fMap.put("bnum", String.valueOf(bnum));
		boolean f = false;

		// 파일 메모리에 저장
		String oriFileName = file.getOriginalFilename(); // a.txt
		// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
		String sysFileName = System.currentTimeMillis() + "." + oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
		System.out.println("sys=" + sysFileName);
		System.out.println("ori=" + oriFileName);
		mj.setMj_portf(sysFileName);
		// 5.메모리->실제 파일 업로드
		/*
		 * System.out.println(session.getAttribute("id").toString());
		 * System.out.println("세션 확인");
		 */
		try {
			file.transferTo(new File(path + sysFileName));
			
		  f = pDao.nortowriapplyInsert(mj);
		

		} catch (IOException e) {
			e.printStackTrace();
		}
		// for End

		if (f)
			return true;
		return false;
	}

	public String revTenderfileUp(MultipartHttpServletRequest multi) {
		String root = multi.getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/upload/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdirs(); // upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		}
		// 3.파일을 가져오기-파일태그 이름들 반환
		// String files=multi.getFileNames(); //파일태그가 2개이상일때
		// List<MultipartFile> file = multi.getFiles("b_files");

		MultipartFile files = multi.getFile("file");
		// 파일 메모리에 저장
		String oriFileName = files.getOriginalFilename(); // a.txt
		// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
		String sysFileName = System.currentTimeMillis() + "." + oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
		System.out.println("ori=" + oriFileName);
		System.out.println("sys=" + sysFileName);
		// 5.메모리->실제 파일 업로드
		/*
		 * System.out.println(session.getAttribute("id").toString());
		 * System.out.println("세션 확인");
		 */
		try {
			files.transferTo(new File(path + sysFileName));
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		// for End

			return sysFileName;
	}
}
