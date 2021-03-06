package edu.mum.coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.domain.ProductType;
import edu.mum.coffee.service.ProductService;

@RestController
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping(value="/")
	public List<Product> getAll(){
		return productService.getAllProduct();
	}
	
	@GetMapping(value="/{id}")
	public Product getProduct(@PathVariable int id){
		return productService.getProduct(id);
	}
	
	@GetMapping(value="/search/{criteria}")
	public List<Product> getByCriteria(@PathVariable String criteria){
		return productService.findByTextSearch(criteria);
	}
	
	@GetMapping(value="/type/{type}")
	public List<Product> getByProductType(@PathVariable ProductType type){
		return productService.findByProductType(type);
	}
	
	@GetMapping(value="/price/{minPrice}/{maxPrice}")
	public List<Product> getByPrice(@PathVariable double minPrice, @PathVariable double maxPrice){
		return productService.findByPrice(minPrice, maxPrice);
	}
	/*@GetMapping(value="/update/{id}")
	public String get(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.getProduct(id));
		return "newproduct";
	}*/
	
	@PostMapping(value="/")
	public String saveProduct(Product product){
		productService.save(product);
		return "redirect:/admin/products";
	}
	
	@PostMapping(value="/new")
	public Product saveProducts(@RequestBody Product product){
		return productService.save(product);
	}
	
	@PutMapping(value="/update/{id}")
	public String updateProduct(@PathVariable int id, Product product){
		Product product2 = productService.getProduct(id);
		product2.setDescription(product.getDescription());
		product2.setProductName(product.getProductName());
		product2.setPrice(product.getPrice());
		product2.setProductType(product.getProductType());
		productService.save(product2);
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
	public void deleteOrder(@PathVariable int id){
		productService.delete(productService.getProduct(id));
	}
}
