import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Response, RequestOptions, URLSearchParams } from "@angular/http";
import { map, catchError, tap } from 'rxjs/operators';

// import models
import { Sanpham } from '../models/sanpham';
import { Khohang } from '../models/khohang';
import { Hoadon } from '../models/hoadon';
import { ChitietSanpham } from '../models/ChitietSanpham';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class SanphamService {
  public API: string = "http://localhost:9099/";
  private URL_SP: string = "sanpham";
  private URL_SPID: string = "sanpham/";
  private URL_HD: string = "hoadon";
  private URL_SPKHO: string = "kho";
  public sanpham: Sanpham[] = [];
  public ChitietSanpham: ChitietSanpham[] = [];
  listSizeOfProductData = new Array();
  //
  constructor(
    public httpClient: HttpClient
  ) { }
  // Get all San pham
  getAllSanPham(): Observable<Sanpham[]> {
    return this.httpClient.get<Sanpham>(this.API + this.URL_SP)
      .catch(this.handleError);
  }
  // Get all San pham trong Kho
  getAllSP_Kho(): Observable<Khohang[]> {
    return this.httpClient.get<Khohang>(this.API + this.URL_SPKHO)
      .catch(this.handleError);
  }
  // Get all San pham by ID
  getSanphamByID(id: number): Observable<ChitietSanpham> {
    return this.httpClient
      .get<ChitietSanpham>(this.API + "sanpham/" + id)
      .catch(this.handleError);
  }
  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }
  //
  update_Sp(sanpham: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.put<any>(this.API + "sanpham", sanpham)
      .catch(this.handleError);
  }
  //
  insert_Sp(sanpham: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.post<any>(this.API + "sanpham", sanpham)
      .catch(this.handleError);
  }
  //
  saveHangTrongKho(id, list): Observable<Response> {
    let search = new URLSearchParams();
    return this.httpClient.put<any>(this.API + "sanpham/hangtrongkho/" + id, list)
      .catch(this.handleError);
  }
}
