package com.designus.www.userClass;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
@Component
public class UploadFile {
	//파일 업로드 메소드	
	//String fullPath="D:/Work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SpringMVC-Board/resources/upload";
	@Autowired
	private ImemberDao mDao;
	public boolean fileUp(MultipartHttpServletRequest multi, Member mb) {
		   System.out.println("id="+mb.getMb_id());
		   System.out.println("pw="+mb.getMb_pw());
		  System.out.println("name="+mb.getMb_name());
		  System.out.println("birth="+mb.getMb_birth());
		  System.out.println("address="+mb.getMb_address());
		  System.out.println("email="+mb.getMb_email());
		   System.out.println("fileUp");
		      //1.이클립스의 물리적 저장경로 찾기
		      String root=multi.getSession().getServletContext().getRealPath("/");
		      System.out.println("root="+root);
		      String path=root+"resources/upload/";
		      //2.폴더 생성을 꼭 할것...
		      File dir=new File(path);
		      if(!dir.isDirectory()){  //upload폴더 없다면
		         dir.mkdirs();  //upload폴더 생성 //s붙일경우 상위 지정폴더까지 생성해줌
		      }
		      //3.파일을 가져오기-파일태그 이름들 반환
		      //String files=multi.getFileNames(); //파일태그가 2개이상일때
		      //List<MultipartFile> file = multi.getFiles("b_files");
		      MultipartFile file = multi.getFile("mb_profile");
		 
		      //fMap.put("bnum", String.valueOf(bnum));
		      boolean f=false;
		      
		     
		         //파일 메모리에 저장
		         MultipartFile mf = file; //실제 업로드될 파일
		         String oriFileName = file.getOriginalFilename();  //a.txt
		         mb.setMb_profile(oriFileName);
		         //4.시스템파일이름 생성  a.txt  ==>112323242424.txt
		         String sysFileName=System.currentTimeMillis()+"."
		               +oriFileName.substring(oriFileName.lastIndexOf(".")+1);
		        System.out.println("sys="+sysFileName);
		        System.out.println("ori="+oriFileName);
				
		         //5.메모리->실제 파일 업로드
		        
		         try {
		            mf.transferTo(new File(path+sysFileName));
		           f=mDao.memberapplyInsert(mb);
		         }catch (IOException e) {
		            e.printStackTrace();
		         }
		       //for End
		      
		      if(f)
		         return true;
		      return false;
	}

	
	//파일 다운로드
		public void download(String fullPath, 
				String oriFileName, HttpServletResponse resp) throws Exception {
			
			//한글파일 깨짐 방지
			String downFile = URLEncoder.encode(oriFileName, "UTF-8");
			//파일명 뒤에 이상한 문자가 붙는 경우 아래코드 해결
			//downFile=downFile.replaceAll("//+","");
			System.out.println("왜 나만 안되는 거야...ㅠㅠ="+oriFileName);
			//파일 객체 생성
			File file = new File(fullPath);
			//다운로드 경로 파일을 읽어 들임
			InputStream is = new FileInputStream(file);
			//반환객체설정
			resp.setContentType("application/octet-stream");
			resp.setHeader("content-Disposition", 
					"attachment; filename=\""+downFile+"\"");//attachment 첨부
			//반환객체에 스트림 연결
			OutputStream os = resp.getOutputStream();
			
			//파일쓰기
			byte[] buffer = new byte[1024];
			int length;
			while((length = is.read(buffer)) != -1){
				os.write(buffer,0,length);
			}
			os.flush();
			os.close();
			is.close();
		}



 }
 
 
