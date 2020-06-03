import { Component, OnInit } from '@angular/core';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {

  public user: any;
  public chucVu: any;
  constructor( ) { }

  ngOnInit() {
    this.user =JSON.parse(localStorage.getItem('user'));
    console.log("gfdgfd:"+this.user.quyen.tenQuyen);
    if(this.user.quyen[0].tenQuyen == 'ROLE_ADMIN'){
      this.chucVu = 'Quản lý';
      
    }
    if(this.user.quyen[0].tenQuyen == 'ROLE_NHANVIEN'){
      this.chucVu = 'Nhân viên';
    }

  }

}
