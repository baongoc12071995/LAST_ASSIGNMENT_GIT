import { Injectable } from '@angular/core';
import { LoaiGiay } from '../models/loaiGiay';
import { ChitietLoaigiay } from '../models/chitietLoaigiay';
import { Http, Response, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { map } from 'rxjs/operators';

@Injectable()
export class LogService {
  public API: string = "http://localhost:9099";
  constructor(
    public http: Http
  ) { }
  
  //Log in 
  logIn(headers:any): Observable<any> {
    return this.http.get(this.API + "/login", headers).map(data => {
      return data.json();
    });
  }
  
  //Log out
  logOut(): Observable<any> {
    return this.http.get(this.API + "/logout").map(data => {
      return data;
    });
  }
}
