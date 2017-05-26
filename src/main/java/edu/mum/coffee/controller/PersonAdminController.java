package edu.mum.coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.domain.ProductType;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@RequestMapping("admin/person")
public class PersonAdminController {
	
	@Autowired
	private PersonService personService;
	
	@GetMapping()
	public String getPersons(Model model) {
		model.addAttribute("persons", personService.findAll());
		return "persons";
	}
	
	@PostMapping()
	public String savePerson(Person person){
		personService.savePerson(person);
		return "redirect:/admin/person";
	}
}
