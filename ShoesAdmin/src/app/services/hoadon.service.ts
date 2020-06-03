import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Response, RequestOptions } from "@angular/http";
import { map, catchError, tap } from 'rxjs/operators';

// import models
import { Hoadon } from '../models/hoadon';
import { Chitiethoadon } from '../models/chitiethoadon';
import { Invoice } from '../models/invoice';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class HoadonService {

  public URL_HD: string = "http://localhost:9099/hoadon/";
  public Chitiet_HD: Invoice[] = [];

  constructor(
    public httpClient: HttpClient
  ) { }

  // Lay tat ca San pham trong hoa don
  getAllSP_HD(): Observable<Hoadon[]> {
    return this.httpClient.get<Hoadon>(this.URL_HD)
      .catch(this.handleError);
  }

  // Get Hoa don by ID
  getHoadonByID(id: number): Observable<Invoice[]> {
    return this.httpClient
      .get<Invoice>(this.URL_HD + id)
      .catch(this.handleError);
  }

  DeletehoaDon(id: number): Observable<{}> {
    return this.httpClient
      .delete(this.URL_HD + id)
      .catch(this.handleError);
  }
  //
  Chuyentrangthai(id: number, idNhanVien: number): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.put<any>(this.URL_HD + "chuyentrangthai/" + id + "/" + idNhanVien, {search});
  }
  //
  sendMail(id: number): Observable<any>{
    return this.httpClient.get<any>(this.URL_HD+ "sendmail/"+ id);
  }

  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }

}
