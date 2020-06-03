import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { ProductSelected } from '../../entity/product-selected-cart';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { UserData } from '../../entity/user-data';
import { Customer } from '../../entity/customer';
import { ToastrService } from '../../services/toastr.service';
import { UserInfo } from '../../entity/userInfo';
import { RequestOptions, Headers } from '@angular/http';
import { CustomerService } from '../../services/customer.service';

declare var jquery: any;
declare var $: any;

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css'],
  providers: [AuthService, CustomerService]
})
export class CartComponent implements OnInit {

  @Output() customerData = new EventEmitter<any>();
  _productInCart: ProductSelected[] = [];
  _sumOfMoney: number = 0;
  _storeUser: UserData[] = [];
  chkData: Customer;
  _userData: any;
  userInfo: UserInfo;

  constructor(private router: Router,
    private authService: AuthService,
    private toastrService: ToastrService,
    private customerService: CustomerService) { }

  ngOnInit() {
    if (sessionStorage.productInCart !== null) {
      this._productInCart = JSON.parse(sessionStorage.productInCart);
      this._productInCart.forEach(p => {
        console.log(p.soLuong);
        
        this._sumOfMoney += p.donGia * (1 - p.chietKhau) * p.soLuong;
      })
    }
    console.log("In cart:" + JSON.stringify(this._productInCart));

  }

  minusQuantity(id, tenKichThuoc, soLuong) {
    // this._productInCart = JSON.parse(sessionStorage.productInCart);
    this._productInCart.forEach(p => {
      if (p.id === id && p.tenKichThuoc === tenKichThuoc && soLuong > 1) {
        p.soLuong = --soLuong;
        this._sumOfMoney -= p.donGia * (1 - p.chietKhau);
      }
    });
    console.log("minus: " + JSON.stringify(this._productInCart));

  }

  plusQuantity(id, tenKichThuoc, soLuong) {
    // this._productInCart = JSON.parse(sessionStorage.productInCart);
    this._productInCart.forEach(p => {
      if (p.id === id && p.tenKichThuoc === tenKichThuoc && soLuong < p.soLuongKho) {
        p.soLuong = ++soLuong;
        this._sumOfMoney += p.donGia * (1 - p.chietKhau);
      }
    });
    console.log("plus: " + JSON.stringify(this._productInCart));
  }

  deleteProduct(id, tenKichThuoc) {
    // this._productInCart = JSON.parse(sessionStorage.productInCart);
    this._productInCart.forEach(p => {
      if (p.id === id && p.tenKichThuoc === tenKichThuoc) {
        this._productInCart.splice(this._productInCart.indexOf(p), 1);
        sessionStorage.productInCart = JSON.stringify(this._productInCart);
        this._sumOfMoney -= p.donGia * (1 - p.chietKhau) * p.soLuong;
        console.log(this._productInCart);
        return;
      }
    })
  }

  cancelAllProducts() {
    this._productInCart = [];
    sessionStorage.productInCart = JSON.stringify(this._productInCart);
    this._sumOfMoney = 0;
    console.log(this._productInCart);
  }

  getAllProductInCart() {
    this.router.navigate(['/home/checkout']);
    sessionStorage.productInCart = JSON.stringify(this._productInCart);
  }

  removeModal() {
    $(document).ready(function () {
      $('.modal-login').removeClass('show');
      $('.modal-wrapper').removeClass('show');
    });
  }

  goShopping() {
    sessionStorage.productInCart = JSON.stringify(this._productInCart);
  }

}
