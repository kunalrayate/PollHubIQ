package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tka.entity.Contact;
import com.tka.service.ContactService;

@RequestMapping("/contact/")
@Controller
public class ContactController {

	@Autowired
	ContactService cs;

	@PostMapping("/set-contact")
	public String setContactDetails(@ModelAttribute Contact c, RedirectAttributes redirectAttributes) {
		System.out.println("message");
		System.out.println(c);
		String msg = cs.setContactDetails(c);

		redirectAttributes.addFlashAttribute("msg", msg);
		return "redirect:/candidate/contact-us";
	}
}