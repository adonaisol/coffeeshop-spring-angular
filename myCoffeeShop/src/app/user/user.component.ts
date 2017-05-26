import { Component, OnInit, ElementRef } from '@angular/core';
import { UserService } from '../user.service'
import { ProductService } from '../product.service'
import { OrderService } from '../order.service'
import { ActivatedRoute } from '@angular/router'
@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css'],
  providers: [UserService, OrderService, ProductService]
})
export class UserComponent implements OnInit {
  userId: number
  user: object
  userdetails: object
  orders: any
  products: any
  neworder: any ={}
  set1 : boolean = false
  set2 : boolean = false
  constructor(private userService: UserService, private orderService: OrderService, 
    private productService: ProductService, private activatedRoute: ActivatedRoute) { 
      this.activatedRoute.params.subscribe(
      (param: any) => {
        this.userId = param['id'];
        console.log(this.userId);
      })
  }

  ngOnInit() {
    this.getUser()
    this.getOrder()
    this.productService.getAllProducts().subscribe((res) =>
        this.products = res.json()
    )
  }
  loadUser() {
    this.userdetails = this.user;
    this.set1 = true;
  }
  updateUser() {
    this.userService.update(this.userId, this.userdetails).subscribe(
      (res) =>{
        alert("User updated!")
        this.set1=false;
        this.getUser()
      }
    )
  }
  getUser(){
    this.userService.getCurrentUser(this.userId).subscribe(
      (res) => {
        this.user = res.json(); console.dir(this.user)
      }
    )
  }
  getOrder(){
    this.orderService.getOrder(this.userId).subscribe((res) => {
        this.orders = res.json(); console.log(JSON.stringify(this.orders))
        //this.neworder = this.orders[0];
      }
    )
  }
  cancelUpdate(){
    this.userdetails = this.user;
    this.set1 = false;
  }
  orderForm(){
    this.neworder = Object.create(this.orders[0]);
    this.set2 = true;
    console.dir(this.neworder)
  }
  showProduct(){
    //alert(JSON.stringify(this.neworder.orderLines[0].product))
    console.dir(this.neworder)
  }
  placeOrder(){
    let oline ={
      "price": this.neworder.orderLines[0].price,
      "quantity": this.neworder.orderLines[0].quantity,
      "product" : this.neworder.orderLines[0].product,
      "subtotal": this.neworder.orderLines[0].subtotal
    }
    let person = this.user
    let order = {
      "orderDate": new Date(),
      "orderLines": [{
        //"price": this.neworder.orderLines[0].price,
        "quantity": this.neworder.orderLines[0].quantity,
        "product" : this.neworder.orderLines[0].product,
        //"subtotal": this.neworder.orderLines[0].subtotal
        //"order": this
      }],
      "person": person
    }
    console.dir(order)
    this.orderService.createOrder(order).subscribe(
      (res) =>{
        alert("Order Placed!")
        this.set2=false;
        this.getOrder()
      }
    )
  }
}
