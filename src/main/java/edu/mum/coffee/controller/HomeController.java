package edu.mum.coffee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping({"/", "/index", "/home"})
	public String homePage() {
		return "redirect:/admin";
	}

	@GetMapping({"/secure"})
	public String securePage() {
		return "redirect:/admin";
	}

	@GetMapping("/login")
	public String login(Model model, Error error, String logout) {
		//  if (error != null)
		//    model.addAttribute("error", "Your username and password is invalid.");
		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");
		//System.out.println("hellooooooooooooooooooo");
		return "login";
	}
}
