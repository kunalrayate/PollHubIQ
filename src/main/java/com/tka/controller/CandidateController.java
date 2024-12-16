package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.entity.Candidate;
import com.tka.service.Service;

@RequestMapping("/candidate/")
@Controller
public class CandidateController {

	@Autowired
	private Service service;

	@GetMapping("/index")
	public String gethome() {
		return "index";
	}

	@GetMapping("/about-us")
	public String about() {
		return "about";
	}

	@GetMapping("/contact-us")
	public String contact() {
		return "contact";
	}

	@GetMapping("/add-Candidate")
	public String insertCandidate() {
		return "add";
	}

	@PostMapping("/insert-Candidate")
	public String addCandidate(@ModelAttribute Candidate can) {

		String msg = service.addCandidate(can);
		return "add";
	}

	@GetMapping("/display-Candidate")
	public String displayCandidate(Model model) {
		List<Candidate> list = service.displayCandidate();
		model.addAttribute("Candidates", list);
		return "display";
	}

	@GetMapping("/delete-Candidate")
	public String deleteCandidate(@RequestParam("c_id") int pk) {
		String res = service.deleteCandidate(pk);
		System.out.println(res);
		return "redirect:/candidate/display-Candidate";
	}

	@GetMapping("/view-Candidate")
	public String viewCandidate(@RequestParam("c_id") int pk, Model model) {

		Candidate can = service.getCandidate(pk);
		model.addAttribute("p", can);
		return "update";
	}

	@PostMapping("/update-Candidate")
	public String updateCandidate(@ModelAttribute Candidate can) {
		String msg = service.updateCandidate(can);
		return "redirect:/display-Candidate";
	}

	@GetMapping("/search-Candidate")
	public String SearchCandidateByName(@RequestParam("name") String nm, Model model) {
		List<Candidate> listnm = service.SearchCandidateByName(nm);

		model.addAttribute("Candidates", listnm);
		return "display";
	}

}
