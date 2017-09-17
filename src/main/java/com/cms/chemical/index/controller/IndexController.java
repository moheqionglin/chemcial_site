package com.cms.chemical.index.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@Controller
public class IndexController {

	private final Logger log = LoggerFactory.getLogger(IndexController.class);

	@RequestMapping("/")
	public String direct(Model model) {
		Map<String, String> map = new HashMap<>();
		map.put("zhou", "周万里-12de");
		model.addAllAttributes(map);
		return "app/index";
	}

}
