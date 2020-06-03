import { Component, OnInit } from '@angular/core';
import { HomeProduct } from '../../entity/home-product';
import { HomeLoaiGiay } from '../../entity/home-loaigiay';
import { ActivatedRoute, Router } from '@angular/router';
import { LoaigiayService } from '../../services/loaigiay.service';
import { DataService } from '../../services/data.service';
import { KichthuocService } from '../../services/kichthuoc.service';
import { SizeProduct } from '../../entity/size-product';

declare var jquery: any;
declare var $: any;

@Component({
  selector: 'side-bar',
  templateUrl: './side-bar.component.html',
  styleUrls: ['./side-bar.component.css'],
  providers: [LoaigiayService, DataService, KichthuocService]
})
export class SideBarComponent implements OnInit {

  _recommendArray: HomeProduct[];
  _loaiGiayArray: HomeLoaiGiay[];
  _tenGiay: string[] = [];
  _productArray: HomeProduct[];
  _kichThuocArray: SizeProduct[];
  _flag: boolean;
  btns: any;
  constructor(private route: ActivatedRoute, private router: Router,
    private loaigiayService: LoaigiayService, private dataService: DataService,
    private kichthuocService: KichthuocService) { }


  ngOnInit() {
    this.getLoaiGiay();
    this.getRecommendProducts('Adidas');
    this.getKichThuoc();
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
        },
        error => console.log("Error: " + error)
      )
  }

  goCate(name): void {
    let oldName = sessionStorage.tenLoai;
    $('#'+oldName).css("background-color", "white");
    $('#'+name).css("background-color", "yellow");
    sessionStorage.tenLoai = name;
    this.router.navigate(['/home/category', name]);
  }

  goSize(idsize): void {
    console.log("idSize: " + idsize);
    let oldSize = sessionStorage.sizeId;
    $('#'+oldSize).css("background-color", "white");
    $('#'+idsize).css("background-color", "red");
    sessionStorage.sizeId = idsize;

    this.router.navigate(['/home/size', idsize]);
  }


  //GET recommend products
  getRecommendProducts(name: string) {
    this.dataService.getData(name)
      .subscribe(resultArray => {
        this._recommendArray = resultArray;
      }), error => console.error('Error: ' + error);
  }

  getKichThuoc() {
    this.kichthuocService.getKichThuoc().subscribe(
      resultArray => {
        this._kichThuocArray = resultArray;
      }, error => console.error('Error: ' + error)
    )
  }



}
