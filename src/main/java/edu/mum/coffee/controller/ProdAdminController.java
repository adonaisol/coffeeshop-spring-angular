package edu.mum.coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.domain.ProductType;
import edu.mum.coffee.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProdAdminController {
	@Autowired
	private ProductService productService;
	
	@PostMapping()
	public String saveProduct(Product product){
		productService.save(product);
		return "redirect:/admin/products";
	}
	
	@PostMapping(value="/update/{id}")
	public String updateProductPost(@PathVariable int id, Product product){
		Product product2 = productService.getProduct(id);
		product2.setDescription(product.getDescription());
		product2.setProductName(product.getProductName());
		product2.setPrice(product.getPrice());
		product2.setProductType(product.getProductType());
		productService.save(product2);
		return "redirect:/admin/products";
	}
	
	@PostMapping(value="/delete/{id}")
	public String deleteOrder(@PathVariable int id){
		productService.delete(productService.getProduct(id));
		return "redirect:/admin/products";
	}
}
