import { Component, OnInit, ViewContainerRef } from '@angular/core';
import { Subscription } from 'rxjs';
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";

// services
import { HoadonService } from '../../services/hoadon.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Invoice } from '../../models/invoice';
import { Chitiethoadon } from '../../models/chitiethoadon';
import { ToastsManager } from 'ng2-toastr/ng2-toastr';

declare var jquery: any;
declare var $: any;
@Component({
  selector: 'app-invoice',
  templateUrl: './invoice.component.html',
  styleUrls: ['./invoice.component.css']
})

export class InvoiceComponent implements OnInit {

  _detailInvoice: any;
  _productInInvoice: Chitiethoadon[];
  // _sumMoney: number = 0;
  subscription: Subscription;
  id: number;

  constructor(private detailHDServices: HoadonService,
    private route: ActivatedRoute,
    private router: Router, private _vcr: ViewContainerRef,
    private toastr: ToastsManager
  ) { this.toastr.setRootViewContainerRef(_vcr); }

  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.getDetailInvoice(this.id);
  }

  getDetailInvoice(id: number) {
    this.detailHDServices.getHoadonByID(id).subscribe(
      data => {
        this._detailInvoice = data;
        if (this._detailInvoice.trangThai == 'IN_PROGRESS') {
          this._detailInvoice.trangThai = 'Đang chờ';
        }
        if (this._detailInvoice.trangThai == 'DONE') {
          this._detailInvoice.trangThai = 'Hoàn thành';
        }
      },
      error => console.error('Error: ' + error)
    )
  }

  changeTrangThai() {
    let idNhanVien = JSON.parse(localStorage.getItem('user')).nhanVien.id;
    this.detailHDServices.Chuyentrangthai(this.id, idNhanVien).subscribe(result => {
      this.removeModal();
      this._detailInvoice.trangThai = 'Hoàn thành';
      this._detailInvoice.nhanVien.tenNhanVien = JSON.parse(localStorage.getItem('user')).nhanVien.tenNhanVien;
      this.toastr.success('Chuyển trạng thái thành công!');
    })
  }
  //
  sendMail(id: number) {
    this.detailHDServices.sendMail(id).subscribe(
      result => {
        this.toastr.success('Gửi mail thành công!');
      },
      error => {
        console.error('Error: ' + error)
        this.toastr.success('Gửi mail thành công!');
      }
    )

  }

  //
  showModal(p: number) {
    this.id = p;
    $(document).ready(function () {
      $('.modal1').addClass('show');
      $('.modal-wrapper').addClass('show');
    });
  }

  removeModal() {
    $(document).ready(function () {
      $('.modal1').removeClass('show');
      $('.modal-wrapper').removeClass('show');
    });
  }
  //
}
