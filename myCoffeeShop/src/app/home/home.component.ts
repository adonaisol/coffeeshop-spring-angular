import { Component, OnInit } from '@angular/core';
import { ProductService } from '../product.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [ProductService]
})
export class HomeComponent implements OnInit {
  
  products: object;
  constructor(private productService : ProductService){}

  ngOnInit() {
    this.productService.getAllProducts().subscribe(
      (res) => { this.products = res.json(); console.dir(this.products) });
  }
}
