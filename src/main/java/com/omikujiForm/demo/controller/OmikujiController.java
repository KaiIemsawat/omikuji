package com.omikujiForm.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	@RequestMapping("")
	public String omikuji() {
		return "index.jsp";
	}
	
	@RequestMapping("/store")
	public String storeData(
			@RequestParam(value="selectNum") String selectNum
			, @RequestParam(value="city") String city
			, @RequestParam(value="person") String person
			, @RequestParam(value="hobby") String hobby
			, @RequestParam(value="thing") String thing
			, @RequestParam(value="say") String say
			, HttpSession ssn
			){
		
		ssn.setAttribute("selectNum", selectNum);
		ssn.setAttribute("city", city);
		ssn.setAttribute("person", person);
		ssn.setAttribute("hobby", hobby);
		ssn.setAttribute("thing", thing);
		ssn.setAttribute("say", say);
		
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/show")
	public String show() {
		return "show.jsp";
	}
	
	
}
