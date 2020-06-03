import { Injectable } from '@angular/core';
import { Http, Response, RequestOptions } from "@angular/http";
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
import { SizeProduct } from '../entity/size-product';
@Injectable()
export class KichthuocService {
  private _apiUrl = "http://localhost:9099/";
  constructor(private http: Http) { }

  getKichThuoc():Observable<SizeProduct[]>{
    return this.http
    .get(this._apiUrl + "kichthuoc")
    .map((response: Response) => {
      return <SizeProduct[]>response.json();
    }).catch(this.handleError);
  }
  
  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }

}
