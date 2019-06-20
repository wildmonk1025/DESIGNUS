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
	/*
	 * LocalDate -> String LocalDate.of(2020, 12,
	 * 12).format(DateTimeFormatter.BASIC_ISO_DATE); // 20201212
	 * 
	 * LocalDateTime -> String
	 * LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
	 * ); // 2018-07-26 00:42:24
	 * 
	 * LocalDateTime -> java.util.Date
	 * Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant());
	 * //Thu Jul 26 01:00:30 KST 2018
	 * 
	 * LocalDate -> java.sql.Date Date.valueOf(LocalDate.of(2015, 5, 5)); //
	 * 2018-07-26
	 * 
	 * LocalDateTime -> java.sql.Timestamp Timestamp.valueOf(LocalDateTime.now());
	 * // 2018-07-26 01:06:55.323
	 * 
	 * String -> LocalDate LocalDate.parse("2002-05-09"); // 2002-05-09
	 * LocalDate.parse("20081004", DateTimeFormatter.BASIC_ISO_DATE); // 2008-10-04
	 * 
	 * String -> LocalDateTime LocalDateTime.parse("2007-12-03T10:15:30"); //
	 * 2007-12-03T10:15:30 LocalDateTime.parse("2010-11-25 12:30:00",
	 * DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")); // 2010-11-25T12:30
	 * 
	 * java.util.Date -> LocalDateTime LocalDateTime.ofInstant(new
	 * Date().toInstant(), ZoneId.systemDefault()); // 2018-07-26T01:16:46.755
	 * 
	 * java.sql.Date -> LocalDate new
	 * Date(System.currentTimeMillis()).toLocalDate(); // 2018-07-26
	 * 
	 * java.sql.Timestamp -> LocalDateTime new
	 * Timestamp(System.currentTimeMillis()).toLocalDateTime(); //
	 * 2018-07-26T01:20:07.364
	 * 
	 * LocalDateTime -> LocalDate LocalDate.from(LocalDateTime.now()); // 2018-07-26
	 * 
	 * LocalDate -> LocalDateTime LocalDate.now().atTime(2, 30); // 2018-07-26T02:30
	 */

}
