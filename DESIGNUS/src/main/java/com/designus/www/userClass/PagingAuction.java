package com.designus.www.userClass;

import java.util.List;

import com.designus.www.bean.Basket;

public class PagingAuction {
	private int maxNum; // 전체 글의 개수
	private int pageNum; // 현재 페이지 번호
	private int listCount; // 10 // 페이지당 나타낼 글의 갯수
	private int pageCount; // 2 // 페이지그룹당 페이지 갯수
	private String boardName; // 게시판의 종류
	private int cgcode; // 게시판의 종류

	public PagingAuction(int maxNum, int pageNum, int listCount, int pageCount, int cgcode, String boardName) {
		this.maxNum = maxNum;
		this.pageNum = pageNum;
		this.listCount = listCount;
		this.pageCount = pageCount;
		this.boardName = boardName;
		this.cgcode = cgcode;
	}

	@SuppressWarnings("unused")
	public Object makeHtmlPaging1() {
		int totalPage = (maxNum % listCount > 0) ? maxNum / listCount + 1 : maxNum / listCount;
		int totalGroup = (totalPage % pageCount > 0) ? totalPage / pageCount + 1 : totalPage / pageCount;
		int currentGroup = (pageNum % pageCount > 0) ? pageNum / pageCount + 1 : pageNum / pageCount;
		return makeHtmlAuc1(currentGroup, totalPage, boardName, cgcode);
	}

	private Object makeHtmlAuc1(int currentGroup, int totalPage, String boardName2, int cgcode2) {
		StringBuffer sb = new StringBuffer();
		int start = (currentGroup * pageCount) - (pageCount - 1);
		int end = (currentGroup * pageCount >= totalPage) ? totalPage : currentGroup * pageCount;
		if (start != 1) {
			sb.append("<a href='" + boardName + "?pageNum=" + (start - 1) + "&cgcode=" + cgcode + "'>");
			sb.append("[◀]");
			sb.append("</a>");
		}
		for (int i = start; i <= end; i++) {
			if (pageNum != i) { // 현재 페이지가 아닌 경우 링크처리
				sb.append("<a href='" + boardName + "?pageNum=" + i + "&cgcode=" + cgcode + "'>");
				sb.append(" [ ");
				sb.append(i);
				sb.append(" ] ");
				sb.append("</a>");
			} else { // 현재 페이지인 경우 링크 해제
				sb.append("<font style='color:red;'>");
				sb.append(" [ ");
				sb.append(i);
				sb.append(" ] ");
				sb.append("</font>");
			}
		}
		if (end != totalPage) {
			sb.append("<a href='" + boardName + "?pageNum=" + (end + 1) + "&cgcode=" + cgcode + "'>");
			sb.append("[▶]");
			sb.append("</a>");
		}
		return sb.toString();
	}

	@SuppressWarnings("unused")
	public Object makeHtmlPaging2() {
		int totalPage = (maxNum % listCount > 0) ? maxNum / listCount + 1 : maxNum / listCount;
		int totalGroup = (totalPage % pageCount > 0) ? totalPage / pageCount + 1 : totalPage / pageCount;
		int currentGroup = (pageNum % pageCount > 0) ? pageNum / pageCount + 1 : pageNum / pageCount;
		return makeHtmlAuc2(currentGroup, totalPage, boardName, cgcode);
	}

	private Object makeHtmlAuc2(int currentGroup, int totalPage, String boardName2, int cgcode2) {
		StringBuffer sb = new StringBuffer();
		int start = (currentGroup * pageCount) - (pageCount - 1);
		int end = (currentGroup * pageCount >= totalPage) ? totalPage : currentGroup * pageCount;

		if (start != 1) {
			sb.append("<a href='" + boardName + "?pageNum=" + (start - 1) + "&cgcode=" + cgcode + "'>");
			sb.append("[◀]");
			sb.append("</a>");
		}
		for (int i = start; i <= end; i++) {
			if (pageNum != i) { // 현재 페이지가 아닌 경우 링크처리
				sb.append("<a href='" + boardName + "?pageNum=" + i + "&cgcode=" + cgcode + "'>");
				sb.append(" [ ");
				sb.append(i);
				sb.append(" ] ");
				sb.append("</a>");
			} else { // 현재 페이지인 경우 링크 해제
				sb.append("<font style='color:red;'>");
				sb.append(" [ ");
				sb.append(i);
				sb.append(" ] ");
				sb.append("</font>");
			}
		}
		if (end != totalPage) {
			sb.append("<a href='" + boardName + "?pageNum=" + (end + 1) + "&cgcode=" + cgcode + "'>");
			sb.append("[▶]");
			sb.append("</a>");
		}
		return sb.toString();
	}

}
