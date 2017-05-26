import { Injectable } from '@angular/core';
import {Http, Response, Headers, RequestOptions} from "@angular/http"
import {Observable} from "rxjs";

@Injectable()
export class OrderService {

  constructor(private http:Http) { }

  getOrder(userId) {
    return this.http.get('http://localhost:8080/orders/person/' + userId);
  }

  createOrder(order){
    let headers = new Headers({ 'Access-Control-Allow-Origin': '*' });
    let options = new RequestOptions({ headers: headers });
    return this.http.post('http://localhost:8080/orders/', order, options)
  }
}
