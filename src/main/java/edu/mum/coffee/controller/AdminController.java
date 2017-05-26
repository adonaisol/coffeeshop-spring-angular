package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private PersonService personService;
	
	@Autowired
	private ProductService productService;
	
	@GetMapping()
	public String adminPage(Model model) {
		return "admin";
	}
	
	@GetMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("products", productService.getAllProduct());
		return "products";
	}
	
	@GetMapping("/product/{id}")
	public String editProduct(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.getProduct(id));
		return "editProduct";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteProduct(@PathVariable int id, Model model){
		model.addAttribute("product", productService.getProduct(id));
		return "deleteProduct";
	}
	
	@GetMapping("/orders")
	public String getOrders(Model model){
		model.addAttribute("orders", orderService.findAll());
		return "orders";
	}
}
