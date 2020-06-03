import { Component, OnInit, Output } from '@angular/core';
import { FormControl, Validators, ReactiveFormsModule, FormGroup } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { ToastrService } from '../../services/toastr.service';
import { AuthService } from '../../services/auth.service';
import { UserData } from '../../entity/user-data';
import { EventEmitter } from 'events';
import { HttpHeaders } from '@angular/common/http';
import { RequestOptions, Headers } from '@angular/http';
import { Customer } from '../../entity/customer';
import { CustomerService } from '../../services/customer.service';
import { Location } from '@angular/common';

declare let toastr: any;
declare var jquery: any;
declare var $: any;

@Component({
  selector: 'app-user-login',
  templateUrl: './user-login.component.html',
  styleUrls: ['./user-login.component.css'],
  providers: [AuthService, CustomerService]
})
export class UserLoginComponent implements OnInit {

  phonePattern =    "^((\\+91-?)|0)?[0-9]{10}$";
  // emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]{5,}\.[a-z]{2,4}$";

  regisForm:        FormGroup;
  email =           new FormControl('');
  tenKhachHang =    new FormControl('');
  soDienThoai =     new FormControl('');
  diaChi =          new FormControl('');

  hide = true;
  _userData: any;
  _storeUser: UserData[] = [];
  httpOptions: any;
  chkData: Customer;
  
  newCustomer: Customer = {
    id: 0,
    tenKhachHang: '',
    diaChi: '',
    soDienThoai: '',
    email: '',
    idAccount: ''
  };


  constructor(private router: Router, private toastrService: ToastrService,
    private authService: AuthService,
    private customerService: CustomerService, private location: Location) {
    this.email = new FormControl('');
    this.soDienThoai = new FormControl('', [Validators.required, Validators.pattern(this.phonePattern)]);

    this.regisForm = new FormGroup({
      tenKhachHang: this.tenKhachHang,
      soDienThoai: this.soDienThoai,
      diaChi: this.diaChi,
      email: this.email
    });

  }



  ngOnInit() {
    if (sessionStorage.customer != null) {
      this.newCustomer = JSON.parse(sessionStorage.customer);
    }
  }


  saveNewCustomer(customer) {
    if(customer.email != '') {
      this.newCustomer.email = customer.email;
    }

    this.newCustomer.soDienThoai = customer.soDienThoai;
    this.newCustomer.diaChi = customer.diaChi;
    this.customerService.saveCustomer(this.newCustomer).subscribe(result => {
      this.newCustomer = result;
      sessionStorage.customer = JSON.stringify(result);
      if(sessionStorage.productInCart != null) {
        this.router.navigate(['/home/checkout']);
      }else {
        this.location.back();
      }
      
    });
  }

  getErrorMessage() {
    return this.email.hasError('required') ? 'You must enter a value' :
      this.email.hasError('email') ? 'Not a valid email' :
        '';
  }

  showModal() {
    $(document).ready(function () {
      $('.modal-wrapper').addClass('show');
      $('.modal-login').addClass('show');

      $('.modal-wrapper').on('click', function () {
        $('.modal-login').removeClass('show');
        $('.modal-wrapper').removeClass('show');
      })
    });
  }

  removeModal() {
    $(document).ready(function () {
      $('.modal-login').removeClass('show');
      $('.modal-wrapper').removeClass('show');
    });
  }

}
