import { Component, OnInit, OnDestroy, SimpleChanges, ViewContainerRef } from '@angular/core';
import { Subscription } from 'rxjs';
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import { ToastsManager } from 'ng2-toastr/ng2-toastr';
import "rxjs/Rx";
// jquyery phan trang
declare var jquery: any;
declare var $: any;
//Models
import { Hoadon } from '../.././models/hoadon';
// services
import { HoadonService } from '../../services/hoadon.service';
import { identifierModuleUrl } from '@angular/compiler';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-table-hoadon',
  templateUrl: './table-hoadon.component.html',
  styleUrls: ['./table-hoadon.component.css']
})
export class TableHoadonComponent implements OnInit {
  public list_hd: Hoadon[] = [];
  public subscription: Subscription;
  id: number;
  role: String;


  constructor(
    private hoadonServices: HoadonService,
    private router: Router,
    private route: ActivatedRoute,
    private _vcr: ViewContainerRef,
    private toastr: ToastsManager
  ) { this.toastr.setRootViewContainerRef(_vcr); }

  ngOnInit() {
    // load phan trang
    //this.id = this.route.snapshot.params['id'];
    this.loadData();

    // Load 1 lần là đủ
    this.File_export();

    this.role = JSON.parse(localStorage.getItem('user')).quyen[0].tenQuyen;
    console.log(this.role);

  }

  // Phan trang
  showDataTable() {
    $(document).ready(function () {
    
      $('#table_hd').DataTable({
        "order": [[0, "desc"]]
      });
      $.fn.dataTable.ext.errMode = 'none';
    });
  }
  //
  File_export() {
    $(document).ready(function () {
      var table = $('#table_hd').DataTable(
        {
          "order": [[0, "desc"]]
        }
      );

      new $.fn.dataTable.Buttons(table, {
        buttons: [
          'excel', 'pdf', 'print'
        ]
      });

      table.buttons(0, null).container().prependTo(
        table.table().container()
      );
      $.fn.dataTable.ext.errMode = 'none';
    });
  }
  // Load all Hoa don
  loadData() {
    this.hoadonServices.getAllSP_HD().subscribe((data: Hoadon[]) => {
      this.list_hd = data;
      this.showDataTable();
    },
      error => {
        console.log(error);
      });
  }

  //
  showModal(id: number) {
    this.id = id;
    // console.log(id);

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
  DelhoaDon() {
    this.hoadonServices.DeletehoaDon(this.id).subscribe(result => {
      this.toastr.success('Delete success!');
      this.removeModal();  
      this.loadData();
      this.showDataTable();
    	},   
      error =>console.log(error)
      )
  }
}
