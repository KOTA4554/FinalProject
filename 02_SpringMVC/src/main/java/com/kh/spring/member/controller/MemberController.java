package com.kh.spring.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

/*
 * 스프링에서는 MVC 설계 패턴을 지원하기 위한
 * 어노테이션을 별도로 제공한다.
 * @Component()
 * 		ㄴ @Controller( 컨트롤러 클래스 / 서블릿 )
 * 		ㄴ @Service( 서비스 클래스 )
 * 		ㄴ @Repository ( DAO 클래스)
 *
 */

@Controller
public class MemberController {
	
	@Autowired
	// @Qualifier("ms") 만약 ms로 memberServcie 컴포넌트명을 설정했다면..
	private MemberService memberservice;	// IoC를 통한 의존성 주입
	
	/*
	 *	@GetMapping() / @PostMapping() / @RequestMapping() 
	 */
	
	@RequestMapping("/login.do")
	public String memberLogin(@RequestParam String userId,
							  @RequestParam String password) {
		// 1. 기존 서블릿 방식으로 받아오는 방법 (request / response 를 parameter 로 넣어준다)
		//	  HttpServletRequest request;
		//	  HttpServletResponse response;
		// String userId = request.getParameter("userId");
		
		// 2. 스프링 객체를 하나 생성하여 request의 정보를 받아오는 방법
		//	  Member m : CommandMap 방식
		// System.out.println(m.getUserId() + " / " + m.getPassword());
		
		// 3. @RequsetParam
		System.out.println(userId + " / " + password);
		Member m = new Member(userId, password);
		System.out.println("[DB 전] : " + m);
		
		m = memberservice.SelectOne(m);
		
		System.out.println("[DB 후] : " + m);
		
		String page = "";
		if(m != null) {
			page = "loginSuccess";
		} else {
			page = "loginFail";
		}
		
		return page;
	}
	
}
