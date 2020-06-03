import { Injectable } from '@angular/core';
import { Http, Response, RequestOptions } from "@angular/http";
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
import { HomeProduct } from '../entity/home-product';


// const httpOptions = {
//   headers: new HttpHeaders({ 'Content-Type': 'application/json' })
// };

@Injectable()
export class DataService {
  private _apiUrl = "http://localhost:9099/";
  constructor(private http: Http) { }

  getData(tenLoai: string): Observable<HomeProduct[]> {
    return this.http
      .get(this._apiUrl + "sanpham/homepage/" + tenLoai)
      .map((response: Response) => {
        return <HomeProduct[]>response.json();
      })
      .catch(this.handleError);
  }

  getProductsByCategory(tenLoai: string): Observable<HomeProduct[]> {
    return this.http
      .get(this._apiUrl + "sanpham/name/" + tenLoai)
      .map((response: Response) => {
        return <HomeProduct[]>response.json();
      })
      .catch(this.handleError);
  }

  getAllProduct(): Observable<HomeProduct[]> {
    return this.http
      .get(this._apiUrl + "sanpham")
      .map((response: Response) => {
        return <HomeProduct[]>response.json();
      })
      .catch(this.handleError);
  }

  getProductByKichThuoc(size: string):Observable<HomeProduct[]>{
    return this.http
    .get(this._apiUrl + "sanpham/kichthuoc/" + size)
    .map((response: Response) => {
      return <HomeProduct[]>response.json();
    })
    .catch(this.handleError);

  }

  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }

}
