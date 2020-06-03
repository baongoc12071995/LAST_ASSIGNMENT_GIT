import { Component, OnInit } from '@angular/core';
import { DataService } from '../../services/data.service';
import { HomeProduct } from '../../entity/home-product';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css'],
  providers: [DataService]
})
export class ProductsComponent implements OnInit {

  _productArray: HomeProduct[] = [];
  _detailArray: HomeProduct[] = [];
  
  constructor(private dataService: DataService) {
   }

  ngOnInit() {
    this.getProduct(); 
  }


  //GET product
  getProduct(): void {
    this.dataService.getAllProduct()
      .subscribe(
        resultArray => {
          this._productArray = resultArray;
        }
        , error => console.log("Error: " + error)
      )
  }

  getDetailModal(pro: any) {
    this._detailArray = pro;
  }

}
