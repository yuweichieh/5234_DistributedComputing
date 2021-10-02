package edu.osu.cse5234.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class Index {
	@RequestMapping(method=RequestMethod.GET)
	public String indexPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "Index";
	}
	
	@RequestMapping(path="/about", method=RequestMethod.GET)
	public String about(HttpServletRequest request, HttpServletResponse response) {
		return "About";
	}

	@RequestMapping(path="/contact", method=RequestMethod.GET)
	public String contact(HttpServletRequest request, HttpServletResponse response) {
		return "Contact";
	}
}
