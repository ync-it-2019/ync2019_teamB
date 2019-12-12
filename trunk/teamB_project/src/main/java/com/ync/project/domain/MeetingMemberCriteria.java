package com.ync.project.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter
@Setter
public class MeetingMemberCriteria {

	private int memberpageNum;
	private int memberamount;
	
	public MeetingMemberCriteria() {
		this(1, 10);
	}

	public MeetingMemberCriteria(int pageNum, int amount) {
		   
		this.memberpageNum = pageNum;
		this.memberamount = amount;
	}
	
	public String getListLink() {
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("memberpageNum", this.getMemberpageNum())
				.queryParam("memberamount", this.getMemberamount());
		
		return builder.toUriString();
	}
}
