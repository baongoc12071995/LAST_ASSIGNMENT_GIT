import { Component, OnInit } from '@angular/core';
import { FormsModule, ReactiveFormsModule, FormControl, Validators, FormGroup, FormBuilder } from '@angular/forms';
import { ToastrService } from '../../services/toastr.service';
import { ProductSelected } from '../../entity/product-selected-cart';
import { Customer } from '../../entity/customer';
import { HoaDonService } from '../../services/hoadon.service';
import { Router } from '../../../../node_modules/@angular/router';
import { CustomerService } from '../../services/customer.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css'],
  providers: [HoaDonService, CustomerService]
})
export class CheckoutComponent implements OnInit {

  _productInCart: ProductSelected[] = [];

  _sumOfMoney: number = 0;
  customer: Customer = {
    id: 0,
    tenKhachHang: '',
    diaChi: '',
    soDienThoai: '',
    email: '',
    idAccount: ''
  };

  customerList: Customer[];

  checkoutForm: FormGroup;
  phoneNumber: FormControl;
  address: FormControl;
  email: FormControl;
  name: FormControl;
  note: FormControl;

  namePattern = /^[^*|":<>[\]{}.,?/`~¥£€\\()';@&$!#%^*_+=0-9-]+$/;
  phonePattern = /^((\\+91-?)|0)?[0-9]{10}$/;
  emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$";

  constructor(private toastrService: ToastrService, private hoaDonService: HoaDonService,
    private fb: FormBuilder, private router: Router, private customerService: CustomerService) {

    this.name = new FormControl('', [Validators.required, Validators.pattern(this.namePattern)]);
    this.phoneNumber = new FormControl('', [Validators.required, Validators.pattern(this.phonePattern)]);
    this.address = new FormControl('', Validators.required);
    this.email = new FormControl('', [Validators.required, Validators.pattern(this.emailPattern)]);
    this.note = new FormControl();

    this.checkoutForm = this.fb.group({
      name: this.name,
      phoneNumber: this.phoneNumber,
      address: this.address,
      email: this.email,
      note: this.note
    });
  }

  ngOnInit() {
    this.customerService.getAllKhachhang().subscribe(
      customerArrayList => {
        this.customerList = customerArrayList;
        console.log(this.customerList);
      },
      error => {
        console.log('Error' + error);
      }
    )
    if (sessionStorage.productInCart !== null) {
      this._productInCart = JSON.parse(sessionStorage.productInCart);
      this._productInCart.forEach(p => {
        this._sumOfMoney += p.donGia * (1 - p.chietKhau) * p.soLuong;
      })
    }
  }


  payment(formValues) {
    console.log(this.checkoutForm);
    this.customer.tenKhachHang = this.checkoutForm.value.name;
    this.customer.diaChi = this.checkoutForm.value.address;
    this.customer.email = this.checkoutForm.value.email;
    this.customer.soDienThoai = this.checkoutForm.value.phoneNumber;
    sessionStorage.customer = JSON.stringify(this.customer);
    let listCTHD = [];
    let index = 0;
    this._productInCart.forEach(
      p => {
        let object = { sanPhamId: p.id, soLuong: p.soLuong, tenKichThuoc: p.tenKichThuoc, thanhTien: p.donGia * (1 - p.chietKhau) * p.soLuong };
        listCTHD[index] = object;
        index++;
      }
    )
    let ghiChu = this.checkoutForm.controls.note.value;
    let hoaDon = { ghiChu: ghiChu, tongTien: this._sumOfMoney, listCTHD: listCTHD };
    
    this.customerService.saveCustomer(this.customer).subscribe(
      result => {
        console.log(result);
        let khachHangId = result.id;
        this.hoaDonService.saveHoaDon(khachHangId, hoaDon).subscribe(
          result => {
            console.log(result);
          },
          error => {
            console.error("Error " + error);
            //this.toastrService.warning(`Không thể thanh toán hóa đơn cho ${formValues.name}!, vui lòng liên hệ Admin để biết thêm chi tiết`);
          }
        );
      },
      error => {
        console.log(error);
      }
    )
    this.toastrService.success(`Chúc mừng ${formValues.name} đã thanh toán thành công!`);
    //clear form after customer submit
    this.checkoutForm.reset();
    //clear session data after customer submit
    sessionStorage.productInCart = [];
    this._productInCart = [];

    //reset money after customer submit
    this._sumOfMoney = 0;
    setTimeout(() => {
      this.router.navigate(['/home']);
    }, 1500);    
  }
}
