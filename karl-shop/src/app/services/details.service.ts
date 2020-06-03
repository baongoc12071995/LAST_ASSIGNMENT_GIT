import { Injectable } from '@angular/core';
import { Http, Response, RequestOptions } from "@angular/http";
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
import { DetailProducts } from '../entity/detail-products';
@Injectable()
export class DetailsService {

  private _apiUrl = "http://localhost:9099/";
  constructor(private http: Http) { }

  getDetailProduct(id: number): Observable<DetailProducts> {
    return this.http
      .get(this._apiUrl + "sanpham/" + id)
      .map((response: Response) => {
        return <DetailProducts>response.json();
      })
      .catch(this.handleError);
  }

  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }
}
