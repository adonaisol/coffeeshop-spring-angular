import { Component, OnInit } from '@angular/core';
import { UserService } from '../user.service'
import {Router} from '@angular/router';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  providers: [UserService]
})
export class LoginComponent implements OnInit {
  set: boolean = true;
  router: Router;
  valid: boolean = true;
  username: string;
  password: number;
  users: any;
  currUser: object;
  constructor(_router: Router, private userService: UserService) { 
    this.router = _router;
  }
  
  ngOnInit() {
    this.userService.getAllUsers().subscribe(
      (res) => { this.users = res.json(); console.dir(this.users) });
  }

  login(){
      for (let user of this.users)
        if(user.firstName.toLowerCase() == this.username.toLowerCase() && this.password == user.id){
          this.currUser = user;
          console.log(user.id);
          this.valid = true;
          this.set = false;
          this.router.navigate(['user/' + user.id])
          return false;
        }
      this.valid = false;
  }

}
