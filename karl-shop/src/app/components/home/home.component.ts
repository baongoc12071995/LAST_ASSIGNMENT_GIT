import { Component, OnInit, Pipe, PipeTransform } from '@angular/core';
import { DataService } from '../../services/data.service';
import { HomeProduct } from '../../entity/home-product';
import { LoaigiayService } from '../../services/loaigiay.service';
import { HomeLoaiGiay } from '../../entity/home-loaigiay';
import { Routes, Router } from '@angular/router';
import { DetailProducts } from '../../entity/detail-products';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [DataService, LoaigiayService]
})
export class HomeComponent implements OnInit {
  _productArray: HomeProduct[] = [];
  _productArrayTemp: HomeProduct[];
  _loaiGiayArray: HomeLoaiGiay[];
  _detailArray: HomeProduct[];
  _tenGiay: string[] = [];
  _idSelected: number[] = [];
  tenLoai: string;
  
  constructor(private dataService: DataService, private loaigiayService: LoaigiayService,
    private router: Router) {}

  ngOnInit() {
    this.getLoaiGiay();
  }

  //GET product
  getProduct(name: string[]): void {
    var step = 0;
    for (var i = 0; i < name.length; i++) {
      this.dataService.getData(name[i])
        .subscribe(
          resultArray => {
            this._productArrayTemp = resultArray;
            for (var j = 0; j < this._productArrayTemp.length; j++) {
              this._productArray[step++] = this._productArrayTemp[j];
            }
          },
          error => console.log("Error: " + error)
        )
    }

  }

  //GET loai giay
  getLoaiGiay(): void {
    this.loaigiayService.getLoaiGiay()
      .subscribe(
        resultArray => {
          this._loaiGiayArray = resultArray;
          for (var i = 0; i < this._loaiGiayArray.length; i++) {
            this._tenGiay[i] = this._loaiGiayArray[i].tenLoai;
          }
          this.getProduct(this._tenGiay);
        },
        error => console.log("Error: " + error)
      )
  }

  //show modal product
  getDetailModal(pro: any) {
    this._detailArray = pro;
  }

  getProductByCate(name) {
    this.tenLoai = name;
    this.router.navigate(['/home/category', this.tenLoai]);
  }

}
