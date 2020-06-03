import { Injectable } from '@angular/core';
import { Http, Response, RequestOptions } from "@angular/http";
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
import { HomeLoaiGiay } from '../entity/home-loaigiay';

@Injectable()
export class LoaigiayService {

  private _apiUrl = "http://localhost:9099/";
  constructor(private http: Http) { }

  getLoaiGiay(): Observable<HomeLoaiGiay[]> {
    return this.http
      .get(this._apiUrl + "loaigiay")
      .map((response: Response) => {
        return <HomeLoaiGiay[]>response.json();
      })
      .catch(this.handleError);
  }

  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }
}
