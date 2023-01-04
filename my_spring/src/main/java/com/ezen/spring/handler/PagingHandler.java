package com.ezen.spring.handler;

import com.ezen.spring.domain.PagingVO;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PagingHandler {
	private int startPage; //현재 화면에서 보여줄 시자가 페이지네이션 번호
	private int endPage; //현재 화면에서 보여줄 마지막 페이지네이션 번호
	private boolean prev, next; //이전, 다음 페이지 여부
	
	//총 10개씩 보일예정
	//예를 들어 startPage = 1, endPage = 10, realEndPage = 22
	// 1 2 3 4 5 6 7 8 9 10 NEXT
	// PREV 11 12 13 ... 20 NEXT
	// PREV 21 22
	
	private int totalCount; //전체 게시글 수
	private PagingVO pgvo;
	
	public PagingHandler(PagingVO pgvo, int totalCount) {
		this.pgvo = pgvo;
		this.totalCount = totalCount;
		this.endPage = //소수점 자리를 올려 1~10까지는 endPage가 10이 되도록 설정
				(int)Math.ceil(pgvo.getPageNo() / (pgvo.getQty()*1.0))*pgvo.getQty();
		this.startPage = endPage -9; //1~10까지는 startPage가 1이 되도록 설정
		
		int realEndPage = (int)Math.ceil((totalCount*1.0) / pgvo.getQty()); //ceil하면 (int)로 정수 맞춰줘야함
		
		if(realEndPage < this.endPage) {
			this.endPage = realEndPage;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEndPage;
	}
}
