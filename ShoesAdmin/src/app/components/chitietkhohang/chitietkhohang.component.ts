import { Component, OnInit, Inject, ViewContainerRef } from '@angular/core';
import { SanphamService } from '../../services/sanpham.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Kichthuoc } from '../../models/kichthuoc';
import { KichthuocService } from '../../services/kichthuoc.service';
import {ToastsManager} from 'ng2-toastr/ng2-toastr';

@Component({
  selector: 'app-chitietkhohang',
  templateUrl: './chitietkhohang.component.html',
  styleUrls: ['./chitietkhohang.component.css']
})

export class ChitietkhohangComponent implements OnInit {

  role: string;

  listSizeOfProduct = new Array();
  listSizeOfProductData = new Array();
  listSizeAll: Kichthuoc[];
  id: number;
  chk = false;
  soLuong: number = 0;
  sizeId: number = 0;
  seletedSize: any;
  chitietSp: any;


  constructor(private route: ActivatedRoute, private sanphamService: SanphamService,
    private kichthuocService: KichthuocService,  private _vcr: ViewContainerRef,
    private router: Router,
    private toastr: ToastsManager) {
      this.toastr.setRootViewContainerRef(_vcr);
     }

  ngOnInit() {
    this.id = this.route.snapshot.params['id'];

    this.role = JSON.parse(localStorage.getItem('user')).quyen[0].tenQuyen;
    console.log(this.role);

    this.getChitiet_SP(this.id);
    this.kichthuocService.getListSize().subscribe(
      data => {
        this.listSizeAll = data;
      },
      error => {
        console.log(error);
      }
    );
  }

  getChitiet_SP(id: number): void {
    this.sanphamService.getSanphamByID(id).subscribe(data => {
      this.chitietSp = data;
      this.chitietSp.hangTrongKho.forEach(p => {
        let object = { kichThuocId: p.kichThuoc.id, tenKichThuoc: p.kichThuoc.tenKichThuoc, soLuong: p.soLuong };
        this.listSizeOfProduct.push(object);
      }
      )
    },
      error => {
        console.log(error);
      });
  }

  delSize(kichThuocId: number) {
    this.listSizeOfProduct.forEach(element => {
      if (kichThuocId === element.kichThuocId) {
        this.listSizeOfProduct.splice(this.listSizeOfProduct.indexOf(element), 1);
        console.log("id: " + kichThuocId);
      }
    });
  }

  onChange(newValue: number) {
    console.log(newValue);
    if (newValue == 0) {
      this.chk = false;
      this.sizeId = 0;
    } else {
      this.chk = true;
      this.sizeId = newValue;
    }
  }

  addSize() {
    this.listSizeAll.forEach(p => {
      if (p.id == this.sizeId && this.soLuong > 0 && !isNaN(this.soLuong)) {
        this.seletedSize = { kichThuocId: this.sizeId, tenKichThuoc: p.tenKichThuoc, soLuong: this.soLuong };
        console.log(this.seletedSize);
        let check = false;
        this.listSizeOfProduct.forEach(e => {
          if (e.kichThuocId == this.sizeId) {
            this.listSizeOfProduct.splice(this.listSizeOfProduct.indexOf(e), 1, this.seletedSize);
            console.log("list: " + JSON.stringify(this.listSizeOfProduct));
            check = true;
          }
        });
        if (!check) {
          this.listSizeOfProduct.push(this.seletedSize);
        }
      }
    });
    this.listSizeOfProduct.sort((a, b) => {
      if (a.tenKichThuoc < b.tenKichThuoc) {
        return -1;
      }
      if (a.tenKichThuoc > b.tenKichThuoc) {
        return 1;
      }
      return 0;
    })
  }

  saveHangTrongKho() {
    this.listSizeOfProductData = [];
    this.listSizeOfProduct.forEach(p => {
      let object = { kichThuocId: p.kichThuocId, soLuong: p.soLuong };
      this.listSizeOfProductData.push(object);
    })
    this.sanphamService.saveHangTrongKho(this.id, this.listSizeOfProductData)
      .subscribe(
        res => {
          this.toastr.success('Saved success!');
          setTimeout(() => {
            this.router.navigate(['/index/sanpham']);
          }, 1500);
        }
        , error => console.log(error)
      );
  }
}
