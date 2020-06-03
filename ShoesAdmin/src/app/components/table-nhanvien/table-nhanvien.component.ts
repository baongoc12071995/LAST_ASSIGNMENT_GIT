import { Component, OnInit, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
// jquery phan trang
declare var jquery: any;
declare var $: any;
//Models
import { Nhanvien } from '../.././models/nhanvien';
// services
import { UserService } from '../../services/user.service';
@Component({
	selector: 'app-table-nhanvien',
	templateUrl: './table-nhanvien.component.html',
	styleUrls: ['./table-nhanvien.component.css']
})
export class TableNhanvienComponent implements OnInit, OnDestroy {

	public list_nv: Nhanvien[] = [];
	public subscription: Subscription;
	constructor(
		private nhanvienService: UserService

	) { }

	ngOnInit() {
		this.loadData();
	}

	// Phan Trang
	showDataTable() {
		$(document).ready(function () {
			$('#table_nv').DataTable();
		});
	}
	//
	File_export() {
		$(document).ready(function () {
			var table = $('#table_nv').DataTable();

			new $.fn.dataTable.Buttons(table, {
				buttons: [
					'excel', 'pdf', 'print'
				]
			});

			table.buttons(0, null).container().prependTo(
				table.table().container()
			);
		});
	}

	// Load all staff
	loadData() {
		this.nhanvienService.getAllNhanvien().subscribe(data => {
			let list = data;
			list.forEach(p => {
				this.list_nv.push(p);
			})
			this.File_export();
		}, error => {
			console.log(error);
		});
	}

	// Xóa thông tin nhân viên
	// DelNhanvien(id: number){
	// 	this.nhanvienService.DeleteNhanvien(id).subscribe (
	// 		result => {console.log("Delete Success!");
	// 		this.loadData();
	// 	},
	// 	  error => console.error(error)
	// 	)
	// }

	showModal() {
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
	ngOnDestroy() {

	}
}
