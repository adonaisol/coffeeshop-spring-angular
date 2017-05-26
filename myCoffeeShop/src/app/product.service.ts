import { Injectable } from '@angular/core';
import {Http, Response} from "@angular/http"
import {Observable} from "rxjs";


@Injectable()
export class ProductService {

  constructor(private http : Http) { }

  getAllProducts()  {
     return this.http.get('http://localhost:8080/products/');
  }

}
