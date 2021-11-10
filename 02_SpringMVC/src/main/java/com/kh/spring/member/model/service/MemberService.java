package com.kh.spring.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDAO;
import com.kh.spring.member.model.vo.Member;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	// 회원 조회용 메소드
	public Member SelectOne(Member m) {
		
		System.out.println("[Service]::MemberService Arrived!");
		return memberDAO.selectOne(m);
	}
}
