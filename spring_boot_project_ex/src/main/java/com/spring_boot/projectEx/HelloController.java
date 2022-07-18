package com.spring_boot.projectEx;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
		
		// 시작 시 index 페이지 열기
		@RequestMapping("/")
		public String viewIndex() {
			return "index";
		}
}
