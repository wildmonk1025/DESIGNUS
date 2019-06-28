package com.designus.www.userClass;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import org.springframework.format.datetime.joda.LocalDateTimeParser;

public class DateAdjust {
	public String changeDateToString(String date) throws ParseException {
		LocalDateTime original_setDate = LocalDateTime.parse(date,DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S"));
		/* LocalDateTime original_setDate = LocalDateTime.parse(date, formatter) */
		
		String new_date = adjustTime(original_setDate);
		return new_date;
	}

	public String adjustTime(LocalDateTime original_setDate) {
	//시간 표시

		
		LocalDateTime currentDateTime = LocalDateTime.now();    // 컴퓨터의 현재 날짜와 시간 정보. 결과 : 2018-07-26T16:34:24.757
		//LocalDateTime targetDateTime = LocalDateTime.of(int year, int month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond);

		//DB로 부터 받아온 시간에 1일을 더함. 1일 뒤 종료하는것으로 구성
		original_setDate = original_setDate.plusDays(1); //예: original_setDate.minusDays(1);
		//original_setDate = original_setDate.plusHours(15); //예: original_setDate.minusDays(1);
		
		String val = null;
		if(original_setDate.isAfter(currentDateTime)) {
			
			long d = currentDateTime.until(original_setDate, ChronoUnit.DAYS);
			currentDateTime = currentDateTime.plusDays(d);
			
			long h = currentDateTime.until(original_setDate, ChronoUnit.HOURS);
			currentDateTime = currentDateTime.plusHours(h);
			
			long m = currentDateTime.until(original_setDate, ChronoUnit.MINUTES);
			currentDateTime = currentDateTime.plusMinutes(m);
			
			long s = currentDateTime.until(original_setDate, ChronoUnit.SECONDS);
	
			val = "남은시간 : "+d + "일 " + h + "시간 " + m +"분 " + s + "초 남음";
			System.out.println("남은시간 나타내기="+val);
		} else {
			val = "경매가 마감되었습니다.";
		}
		
		  
		/*
		 * int days = Math.(distance / _day);
		 * int hours = Math.((distance % _day) /_hour);
		 * int minutes = Math.((distance % _hour) / _minute);
		 * int seconds = Math.((distance % _minute) / _second);
		 */
		 
		
		/*
		 * // 지금 String mTime = DateTime.now().toString("yyyy년MM월dd일 HH시mm분ss초");
		 * System.out.println(mTime); // 2018년07월20일 14시25분33초
		 * 
		 * // 지금으로 부터 3시간후 String mTime2 =
		 * DateTime.now().plusHours(3).toString("yyyy년MM월dd일 HH시mm분ss초");
		 * System.out.println(mTime2); // 2018년07월20일 17시25분33초
		 * 
		 * // 지금으로 부터 2주일 후 String mTime3 =
		 * LocalDateTime.now().plusWeeks(2).toString("yyyy년MM월dd일 HH시mm분ss초");
		 * System.out.println(mTime3); // 2018년08월03일 14시25분33초
		 * 
		 * // 지금으로 부터 20일 500시간 후 String mTime4 =
		 * LocalDateTime.now().plusDays(20).plusHours(500).
		 * toString("yyyy년MM월dd일 HH시mm분ss초"); System.out.println(mTime4); // 2018년08월30일
		 * 10시25분33초
		 * 
		 * // 지금으로 부터 1년 2개월 5시간 전 String mTime5 =
		 * LocalDateTime.now().minusYears(1).minusMonths(2).minusHours(5).
		 * toString("yyyy년MM월dd일 HH시mm분ss초"); System.out.println(mTime5); // 2017년05월20일
		 * 09시25분33초
		 */
		return val;
	}
	
	//후원
	public String changeDateToString2(String date) throws ParseException {
		LocalDateTime original_setDate = LocalDateTime.parse(date,DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S"));
		
		String new_date = adjustTime2(original_setDate);
		return new_date;
	}

	public String adjustTime2(LocalDateTime original_setDate) {
	//시간 표시

		
		LocalDateTime currentDateTime = LocalDateTime.now();    // 컴퓨터의 현재 날짜와 시간 정보. 결과 : 2018-07-26T16:34:24.757
		//LocalDateTime targetDateTime = LocalDateTime.of(int year, int month, int dayOfMonth, int hour, int minute, int second, int nanoOfSecond);

		//DB로 부터 받아온 시간에 1일을 더함. 1일 뒤 종료하는것으로 구성
		original_setDate = original_setDate.plusDays(3); //예: original_setDate.minusDays(1);
		//original_setDate = original_setDate.plusMinutes(10); //예: original_setDate.minusDays(1);
		
		String val = null;
		if(original_setDate.isAfter(currentDateTime)) {
			
			long d = currentDateTime.until(original_setDate, ChronoUnit.DAYS);
			currentDateTime = currentDateTime.plusDays(d);
			
			long h = currentDateTime.until(original_setDate, ChronoUnit.HOURS);
			currentDateTime = currentDateTime.plusHours(h);
			
			long m = currentDateTime.until(original_setDate, ChronoUnit.MINUTES);
			currentDateTime = currentDateTime.plusMinutes(m);
			
			long s = currentDateTime.until(original_setDate, ChronoUnit.SECONDS);
	
			val = "후원 마감까지 <br>"+ d + "일 " + h + "시간 " + m +"분 남았습니다.";

		} else {
			val = "기간이 마감된 후원이에요.";
		}
		return val;
	}
	
	public boolean compareDateToBoolean(String date) throws ParseException {
		LocalDateTime original_setDate = LocalDateTime.parse(date,DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S"));
		/* LocalDateTime original_setDate = LocalDateTime.parse(date, formatter) */
			
		LocalDateTime currentDateTime = LocalDateTime.now();
		
		original_setDate = original_setDate.plusDays(1); //예: original_setDate.minusDays(1);
		//original_setDate = original_setDate.plusMinutes(10); //예: original_setDate.minusDays(1);
		
		if(original_setDate.isAfter(currentDateTime)) {
			return true;
		}
		return false;
	}
	
	public boolean EndDateToBoolean(String date) throws ParseException {
	      LocalDateTime original_setDate = LocalDateTime.parse(date,DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S"));
	      /* LocalDateTime original_setDate = LocalDateTime.parse(date, formatter) */
	      
	      LocalDateTime currentDateTime = LocalDateTime.now();
	      
	      original_setDate = original_setDate.plusDays(3); //예: original_setDate.minusDays(1);
	      //original_setDate = original_setDate.plusMinutes(10); //예: original_setDate.minusDays(1);
	      
	      if(original_setDate.isAfter(currentDateTime)) {
	         return true;
	      }
	      return false;
	   }
	
	
	public boolean deleteDateToBoolean(String date) throws ParseException {
		LocalDateTime original_setDate = LocalDateTime.parse(date,DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S"));
		/* LocalDateTime original_setDate = LocalDateTime.parse(date, formatter) */
			
		LocalDateTime currentDateTime = LocalDateTime.now();
		
		original_setDate = original_setDate.plusDays(3); //예: original_setDate.minusDays(1);
		//original_setDate = original_setDate.plusMinutes(10); //예: original_setDate.minusDays(1);
		
		if(original_setDate.isAfter(currentDateTime)) {
			return true;
		}
		return false;
	}
}
