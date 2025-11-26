package com.reimi.reimi_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.reimi.reimi_app.model.Forum;
import com.reimi.reimi_app.service.ForumService;

@Controller
public class ForumController {

	@Autowired
	ForumService service;

	@GetMapping("/")
	public String top(Model model) {
		model.addAttribute("forum", new Forum());
		return "top";
	}
	@PostMapping("/create")
	public String saveForum(@ModelAttribute Forum forum, Model model) {

		service.insert(forum);
		return "result";
	}
}
