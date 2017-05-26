import { Injectable } from '@angular/core';
import {Http, Response, RequestOptions, Headers} from "@angular/http"
import {Observable} from "rxjs";


@Injectable()
export class UserService {
  
  // users = [
  //     {uname: "henok", pass: "pw", uid: 29},
  //     {uname: "adonai", pass: "pw", uid: 26} 
  // ]
  constructor(private http:Http) { }

  getAllUsers() {
    return this.http.get('http://localhost:8080/persons/');
  }

  getCurrentUser(userId){
    return this.http.get('http://localhost:8080/persons/' + userId);
  }
  
  update(userId, user){
    let headers = new Headers({ 'Access-Control-Allow-Origin': '*' });
    let options = new RequestOptions({ headers: headers });
    return this.http.put('http://localhost:8080/persons/update/' + userId, user, options)
  }

}
