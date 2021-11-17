package com.kh.dpr.seller.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.dpr.seller.model.service.SellerService;
import com.kh.dpr.seller.model.vo.Seller;

@Controller
@SessionAttributes({"seller"})
public class SellerController {
	
	@Autowired
	SellerService sellerService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("member/memberSignUp.do")
	public String memberSignUp() {
		
		return "member/memberSignUp";
	}
	
	@RequestMapping("member/memberLogin.do")
	public String memberLogin() {
		
		return "member/memberLogin";
	}
	
	@RequestMapping("member/sellerSignUpEnd.do")
	public String sellerSingUpEnd(Seller seller, Model model) {
		
		System.out.println("컨트롤러 도착 확인");
		System.out.println("Seller 정보 확인" + seller);
		
		String beforePw = seller.getSellerPw();
		String encryptPw = bcryptPasswordEncoder.encode(beforePw);
		seller.setSellerPw(encryptPw);
		
		int result = sellerService.insertSeller(seller);
		
		if(result > 0) {
			System.out.println("등록 성공");
		} else {
			System.out.println("등록 실패");
		}
		
		return "redirect:/";
	}
	
	@RequestMapping("member/checkSellerDuplicate.do")
	public void sellerDuplicate(@RequestParam String sellerId,
								HttpServletResponse response) throws IOException {
		
		int check = sellerService.checkSellerDuplicate(sellerId);
		
		boolean result = (check == 0 ? true : false);
		response.getWriter().print(result);
	}
	
	@RequestMapping("member/sellerLogin.do")
	public String sellerLogin(@RequestParam String sellerId, @RequestParam String sellerPw, 
							Model model) {
		
		Seller seller = sellerService.selectOneSeller(sellerId);
		
		if(seller != null) {
			if(bcryptPasswordEncoder.matches(sellerPw, seller.getSellerPw())) {
				
				model.addAttribute("seller", seller);

			} else {
				// 비밀번호 불일치 시 로직
			}
		} else {
			// 없는 아이디 시 로직
		}
		
		System.out.println("seller : " + seller);
		
		return "seller/sellerMain";
	}
	
	@RequestMapping("member/logout.do")
	public String sellerLogout(SessionStatus status) {
		
		if(!status.isComplete()) {
			status.setComplete();
		}
				
		return "redirect:/";
	}
}