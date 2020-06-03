import { Component, OnInit, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
// jquyery phan trang
declare var jquery:any;
declare var $ :any;
//Services
import { UserService } from '../../services/user.service';
//Models
import { Khachhang } from '../../models/khachhang';

@Component({
  selector: 'app-table-khachhang',
  templateUrl: './table-khachhang.component.html',
  styleUrls: ['./table-khachhang.component.css']
})
export class TableKhachhangComponent implements OnInit, OnDestroy {
  public list_kh: Khachhang[] = [];
	public subscription: Subscription;
  constructor(
    private khachhangService : UserService
  ) { }

  ngOnInit() {
    this.loadData();
  }
  // phân trang
  showDataTable() {
		$(document).ready(function () {
			$('#table_kh').DataTable();
		});
	}
// Load all Customer
  loadData() {
		this.khachhangService.getAllKhachhang().subscribe(data => {
      this.list_kh = data;
      this.showDataTable();
		}, error => {
			console.log(error);
		});
  }
  
  ngOnDestroy(){

  }
}
