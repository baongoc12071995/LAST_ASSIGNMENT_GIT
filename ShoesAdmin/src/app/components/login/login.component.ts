import { Component, OnInit, Inject } from '@angular/core';
import { Router } from '../../../../node_modules/@angular/router';
import { FormsModule, ReactiveFormsModule} from '@angular/forms';
import { LogService } from '../../services/log.service';
import { RequestOptions, Headers } from '@angular/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  providers: [LogService]
})
export class LoginComponent implements OnInit {

  username: string;
  password: string;
  constructor(private logService: LogService, private router: Router) { }

  ngOnInit() {
    localStorage.removeItem('user');
  }

  signIn() {
    console.log(this.username);
    console.log(this.password);
    let headers = new Headers({
      'username': this.username,
      'password': this.password
    });
    let options = new RequestOptions();
    options.headers = headers;
    //headers.set("username",this.username)
    //headers.set("password",this.password);

    console.log(headers.get('username'));
    

    this.logService.logIn(options).subscribe(
      result => {
        localStorage.setItem('user', JSON.stringify(result));
        this.router.navigate(['/index']);
        console.log(result);
        
      },
      error => console.log("Error: " + error)
    );
  }
}
