import { Component, OnInit } from '@angular/core';
import { Route, Router } from '@angular/router';
import { SanphamService } from '../../services/sanpham.service';
import { LogService } from '../../services/log.service';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css'],
  providers: [LogService]
})
export class IndexComponent implements OnInit {

  role: String;

  constructor(
    private router: Router,
    private logService: LogService
  ) { }

  ngOnInit() {
    this.role = JSON.parse(localStorage.getItem('user')).quyen[0].tenQuyen;
    console.log(this.role);
  }


  logout() {
    this.logService.logOut().subscribe(
      result => {
        localStorage.removeItem('user');
        this.router.navigate(['/login']);
      },
      error => console.log("Error: " + error)
    );
  }
}
