import { Component, OnInit, OnDestroy } from '@angular/core';
import { LoaigiayService } from '../../services/loaigiay.service';
import { HomeLoaiGiay } from '../../entity/home-loaigiay';
import { Router } from '@angular/router';
import { UserData } from '../../entity/user-data';
import { AuthService } from '../../services/auth.service';
import { ToastrService } from '../../services/toastr.service';
import { RequestOptions, Headers } from '@angular/http';
import { Customer } from '../../entity/customer';
import { UserInfo } from '../../entity/userInfo';
import { Location } from '@angular/common';
import { CustomerService } from '../../services/customer.service';
import { ProductSelected } from '../../entity/product-selected-cart';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
  providers: [LoaigiayService, AuthService, CustomerService]
})
export class HeaderComponent implements OnInit {

  _loaigiayArray: HomeLoaiGiay[];
  _storeUser: UserData[] = [];
  chkData: Customer;
  _userData: any;
  userInfo: UserInfo;
  customerInfo: any;
  _productInCart: ProductSelected[] = [];
  _productInCartOldLength: number;
  itemSelected: number;

  constructor(private loaiGiayService: LoaigiayService,
    private router: Router,
    private toastrService: ToastrService,
    private authService: AuthService,
    private location: Location,
    private customerService: CustomerService
  ) {}

  ngOnInit() {
    this.getLoaiGiay();   
    this.getProductSelected();
  }

  // SHOW left-bar-menu
  showLeftBar() {
    var ele = document.querySelector('.catagories-side-menu2');
    ele.classList.toggle('show');
  }

  // HIDE left-bar-menu
  hideMenu() {
    var ele = document.querySelector('.catagories-side-menu2');
    ele.classList.remove('show');
  }

  //GET Loai Giay
  getLoaiGiay() {
    this.loaiGiayService.getLoaiGiay()
      .subscribe(resultArray => {
        this._loaigiayArray = resultArray;
      }), error => console.error('Error: ' + error);
  }

  //GET product by category
  getProductByCate(name) {
    this.router.navigate(['/home/category', name]);
    console.log(name);
  }


  signInWithFB() {
    // this.authService.doFacebookLogin().then(result => {
    //   this._userData = result;
    //   this._storeUser.push(this._userData.additionalUserInfo.profile);

    //   if (this._storeUser != null) {
    //     this.toastrService.success(`Xin chào, ${this._userData.additionalUserInfo.profile.name}!`);
    //     let object = {
    //       name: this._userData.additionalUserInfo.profile.name,
    //       image: this._userData.additionalUserInfo.profile.picture.data.url,
    //       idAccount: this._userData.additionalUserInfo.profile.id
    //     };
    //     sessionStorage.tenKhachHang = JSON.stringify(object);
    //     this.userInfo = JSON.parse(sessionStorage.tenKhachHang);

    //     const headers = new Headers();
    //     headers.append('idAccount', this._userData.additionalUserInfo.profile.id)
    //     headers.append('email', this._userData.additionalUserInfo.profile.email);
    //     const options = new RequestOptions({ headers: headers });

    //     this.authService.checkKhachHang(options).subscribe(
    //       data => {
    //         this.chkData = data;
    //         sessionStorage.customer = JSON.stringify(this.chkData);
    //         this.location.isCurrentPathEqualTo(this.location.path());
    //       },
    //       error => {
    //         console.error('Error: ' + error);
    //         let customer1: any;
    //         customer1 = {
    //           tenKhachHang: this._userData.additionalUserInfo.profile.name,
    //           email: this._userData.additionalUserInfo.profile.email,
    //           idAccount: this._userData.additionalUserInfo.profile.id
    //         };
    //         sessionStorage.customer = JSON.stringify(customer1);
    //         console.log(JSON.stringify(customer1));

    //         this.router.navigate(['/home/account']);
    //       }
    //     )
    //   }
    // });
  }

  signInWithGoogle() {
    // this.authService.doGoogleLogin().then(result => {
    //   this._userData = result;
    //   this._storeUser.push(this._userData.additionalUserInfo.profile);

    //   if (this._storeUser != null) {
    //     this.toastrService.success(`Xin chào, ${this._userData.additionalUserInfo.profile.name}!`);
    //     let object = {
    //       name: this._userData.additionalUserInfo.profile.name,
    //       image: this._userData.additionalUserInfo.profile.picture,
    //       idAccount: this._userData.additionalUserInfo.profile.id
    //     };
    //     sessionStorage.tenKhachHang = JSON.stringify(object);
    //     this.userInfo = JSON.parse(sessionStorage.tenKhachHang);

    //     const headers = new Headers();
    //     headers.append('idAccount', this._userData.additionalUserInfo.profile.id)
    //     headers.append('email', this._userData.additionalUserInfo.profile.email);
    //     const options = new RequestOptions({ headers: headers });

    //     this.authService.checkKhachHang(options).subscribe(
    //       data => {
    //         this.chkData = data;
    //         sessionStorage.customer = JSON.stringify(this.chkData);
    //         //this.location.isCurrentPathEqualTo(this.location.path());
    //         this.router.navigate(['/home']);
    //       },
    //       error => {
    //         console.error('Error: ' + error);
    //         let customer1: any;
    //         customer1 = {
    //           tenKhachHang: this._userData.additionalUserInfo.profile.name,
    //           email: this._userData.additionalUserInfo.profile.email,
    //           idAccount: this._userData.additionalUserInfo.profile.id
    //         };
    //         sessionStorage.customer = JSON.stringify(customer1);
    //         console.log(JSON.stringify(customer1));

    //         this.router.navigate(['/home/account']);
    //       }
    //     )
    //   }
    // })
  }

  signOut() {
    sessionStorage.tenKhachHang = [];
    sessionStorage.customer = [];
    this.userInfo = null;
    this.router.navigate(['/home']);
  }

  showProfile() {
    if (this.chkData !== null) {
      console.log(this.chkData.id);
      this.router.navigate(['/home/account/', this.chkData.id]);
    } else if (this._userData.additionalUserInfo.profile.id != null) {
      this.router.navigate(['/home/account/', this._userData.additionalUserInfo.profile.id]);
    }
  }

  getProductSelected() {
    if (sessionStorage.productInCart !== null) {
      this._productInCart = JSON.parse(sessionStorage.productInCart);
      this._productInCartOldLength = this._productInCart.length;
    }
    let count = 0;
    for (let i = 0; i < this._productInCartOldLength; i++) {
      count++;
    }
    this.itemSelected = count;
  }

}
