import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Response, RequestOptions } from "@angular/http";
import { map, catchError, tap } from 'rxjs/operators';

// import models
import { Nhanvien } from '../models/nhanvien'
import { Khachhang } from '../models/khachhang';
import { Chitietnhanvien } from '../models/chitietnhanvien';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class UserService {
  public API: string = "http://localhost:9099/";
  private URL_NV: string = "nhanvien";
  private URL_KH: string = "khachhang";
  public Chitiet_NV: Chitietnhanvien[] = [];
  constructor(
    public httpClient: HttpClient
  ) { }
  // Get all nhan vien
  getAllNhanvien(): Observable<Nhanvien[]> {
    return this.httpClient.get<Nhanvien[]>(this.API + this.URL_NV)
      .catch(this.handleError);
  }

  // Get all Customer
  getAllKhachhang(): Observable<Khachhang[]> {
    return this.httpClient.get<Khachhang[]>(this.API + this.URL_KH)
      .catch(this.handleError);
  }
  // Get  Nhan vien by ID
  getNhanvienbyID(id: number): Observable<Chitietnhanvien> {
    return this.httpClient
      .get<Chitietnhanvien>(this.API + "nhanvien/" + id)
      .catch(this.handleError);
  }
  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }
  //
  update_nv(nhanvien: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.put<any>(this.API + "nhanvien", nhanvien)
      .catch(this.handleError);
  }
  insert_Nv(nhanvien: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.post<any>(this.API + "nhanvien", nhanvien)
      .catch(this.handleError);
  }
  //
  DeleteNhanvien(id: number): Observable<any> {
    return this.httpClient
      .delete(this.API + "nhanvien/" + id)
      .catch(this.handleError);
  }
}
