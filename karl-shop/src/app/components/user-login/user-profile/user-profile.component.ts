import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../../services/auth.service';
import { UserData } from '../../../entity/user-data';
import { Customer } from '../../../entity/customer';
import { FormsModule, FormControl, FormGroup, Validators } from '@angular/forms';
import { ToastrService } from '../../../services/toastr.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CustomerService } from '../../../services/customer.service';
import { InvoiceID } from '../../../entity/invoiceID';
import { Invoices } from '../../../entity/invoices';
import { InvoiceDetail } from '../../../entity/invoice-detail';

declare var jquery: any;
declare var $: any;
@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css'],
  providers: [AuthService, ToastrService, CustomerService]
})

export class UserProfileComponent implements OnInit {

  id: number;
  phonePattern = "^((\\+91-?)|0)?[0-9]{10}$";

  profileForm: FormGroup;
  email: FormControl;
  tenKhachHang: FormControl;
  soDienThoai: FormControl;
  diaChi: FormControl;
  _invoiceArray: InvoiceID[] = [];
  _invoiceID: any;
  _userData: any;

  invoiceDetail: InvoiceDetail[] = [];

  _storeUser: Customer = {
    id: 0,
    tenKhachHang: '',
    diaChi: '',
    soDienThoai: '',
    email: '',
    idAccount: ''
  };

  newCustomer: Customer = {
    id: 0,
    tenKhachHang: '',
    diaChi: '',
    soDienThoai: '',
    email: '',
    idAccount: ''
  };

  constructor(private authService: AuthService,
    private toastr: ToastrService, private route: ActivatedRoute, private router: Router, private customerService: CustomerService) {
    this.email = new FormControl('');
    this.tenKhachHang = new FormControl('');
    this.soDienThoai = new FormControl('', [Validators.required, Validators.pattern(this.phonePattern)]);
    this.diaChi = new FormControl('', Validators.required);

    this.profileForm = new FormGroup({
      email: this.email,
      tenKhachHang: this.tenKhachHang,
      soDienThoai: this.soDienThoai,
      diaChi: this.diaChi
    });

  }

  ngOnInit() {
    //this.newCustomer = JSON.parse(sessionStorage.customer);
    this.id = this.route.snapshot.params['id'];
    this.showProfileCustomer(this.id);
    this.paymentHistory(this.id);
  }

  // Fixing
  // updateProfile(formValues) {
  //   console.log(formValues.email + formValues.tenKhachHang);
  //   this.toastr.success('Cập nhật thông tin thành công!');
  // }

  showProfileCustomer(id: number) {
    this.customerService.getCustomerByIdAccount(id).subscribe(
      result => this.newCustomer = result,
      error => console.log(error)
    )
  }

  paymentHistory(id: number) {
    this.customerService.getHoaDonByCustomerId(id).subscribe(result => {
      this._invoiceArray = result;
      // for (var i = 0; i < this._invoiceArray.length; i++) {
      //   this._invoiceID = this._invoiceArray[i];
      //   this._invoice.push(this._invoiceID);
      // }
    },
      error => console.error('Error: ' + error)
    );
  }

  showInvoice(chiTietHoaDon) {
    $(document).ready(function () {
      $('.modal-wrapper').addClass('show');
      $('.modal-login').addClass('show');

      $('.modal-wrapper').on('click', function () {
        $('.modal-login').removeClass('show');
        $('.modal-wrapper').removeClass('show');
      })
    });
    this.invoiceDetail = chiTietHoaDon;
  }

  removeModal() {
    $(document).ready(function () {
      $('.modal-login').removeClass('show');
      $('.modal-wrapper').removeClass('show');
    });
  }

}
