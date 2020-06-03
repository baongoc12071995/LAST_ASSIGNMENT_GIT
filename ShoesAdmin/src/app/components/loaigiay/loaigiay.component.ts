import { Component, OnInit, ViewContainerRef } from '@angular/core';
import { LoaigiayService } from '../../services/loaigiay.service';
import { LoaiGiay } from '../../models/loaiGiay';
import { FormControl, Validators, FormGroup, FormBuilder } from '@angular/forms';
import { ToastsManager } from 'ng2-toastr/ng2-toastr';


declare var jquery: any;
declare var $: any;

@Component({
  selector: 'app-loaigiay',
  templateUrl: './loaigiay.component.html',
  styleUrls: ['./loaigiay.component.css'],
  providers: [LoaigiayService]
})
export class LoaigiayComponent implements OnInit {
  public list_giay: LoaiGiay[] = [];
  public id_giay: LoaiGiay[] = [];
  id: number = 0;
  isInsert = false;
  pattern = /^[^*|":<>[\]{}.,?/`~¥£€\\()';@&$!#%^*_+=0-9-]+$/;


  public ChitietLoaigiay = {
    id: '',
    tenLoai: ''
  };
  public Loaigiay: FormGroup;
  id_Giay: FormControl;
  ten_Giay: FormControl;

  role: String;
  constructor(
    private loaigiayservice: LoaigiayService,
    private fb: FormBuilder,
    private _vcr: ViewContainerRef,
    private toastr: ToastsManager
  ) {
    this.toastr.setRootViewContainerRef(_vcr);

    this.ten_Giay = new FormControl('', [Validators.required, Validators.pattern(this.pattern)]);
    this.Loaigiay = this.fb.group({
      ten_Giay: this.ten_Giay
    });
  }

  ngOnInit() {
    this.loadDataGiay();
    this.File_export();

    this.role = JSON.parse(localStorage.getItem('user')).quyen[0].tenQuyen;
    
   
   
  }


  // Phan trang
  showDataTable() {
    $(document).ready(function () {
      $('#table_giay').DataTable({
        "order": [[0, "desc"]]
      });
      $.fn.dataTable.ext.errMode = 'none';

    });
    
  }
  //
  File_export() {
    $(document).ready(function () {
      var table = $('#table_giay').DataTable(
        {
          "order": [[0, "desc"]]
        }
      );
      $.fn.dataTable.ext.errMode = 'none'; 

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

  // Load all loại giày
  loadDataGiay() {
    this.loaigiayservice.getLoaiGiay().subscribe(data => {
      this.list_giay = data;
      this.showDataTable();
      
    }, error => {
      console.log(error);
    });
  }
  //
  getChitiet_Loạigiay(id: number): void {
    this.loaigiayservice.getLoaigiaybyID(id).subscribe(data => {
      this.ChitietLoaigiay = data;
    },
      error => {
        console.log(error);
      });
  }

  //
  showModalUpdate(p: number) {

    this.isInsert = true;
    this.getChitiet_Loạigiay(p);
    this.id = p;
    $(document).ready(function () {
      $('.modal1').addClass('show');
      $('.modal-wrapper').addClass('show');
    });
  }

  showModalInsert() {
    this.isInsert = false;
    this.id = 0;
    $(document).ready(function () {
      $('.modal1').addClass('show');
      $('.modal-wrapper').addClass('show');
    });
  }
  //
  showModalSave() {
    $(document).ready(function () {
      $('.modal1').removeClass('show');
      $('.modal2').addClass('show');
      $('.modal-wrapper').addClass('show');
    });
  }

  removeModal() {
    $(document).ready(function () {
      $('.modal1').removeClass('show');
      $('.modal2').removeClass('show');
      $('.modal-wrapper').removeClass('show');
    });
  }
  //
  saveLoaigiay() {
    if (this.id == 0) {
      let object = { tenLoai: this.Loaigiay.controls.ten_Giay.value };
      this.loaigiayservice.insert_Loaigiay(object).subscribe(
        result => {
          this.toastr.success('Thêm mới Loại giày thành công!');
          this.loadDataGiay();
          this.removeModal();
        },
        error => console.error(error)
      )
    } else {
      this.ChitietLoaigiay.tenLoai = this.Loaigiay.controls.ten_Giay.value;
      this.loaigiayservice.update_Loaigiay(this.ChitietLoaigiay).subscribe(
        result => {
          this.toastr.success('Cập nhật Loại giày thành công!');
          this.loadDataGiay();
          this.removeModal();
        },
        error => console.error(error)
      )
    }
  }
}
