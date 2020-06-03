import { Injectable } from '@angular/core';
import { LoaiGiay } from '../models/loaiGiay';
import { ChitietLoaigiay } from '../models/chitietLoaigiay';
import { Response, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { map } from 'rxjs/operators';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class LoaigiayService {
  public API: string = "http://localhost:9099/loaigiay";
  public ChitietLoaigiay: ChitietLoaigiay[] = [];
  constructor(
    public httpClient: HttpClient
  ) { }
  // Get all loại giay
  getLoaiGiay(): Observable<LoaiGiay[]> {
    return this.httpClient.get<LoaiGiay>(this.API)
          .catch(this.handleError);
  }
  //
  // Get Loại Giay by ID
  getLoaigiaybyID(id: number): Observable<ChitietLoaigiay> {
    return this.httpClient
      .get<ChitietLoaigiay>(this.API + "/" + id)
      .catch(this.handleError);
  }
  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }
  // insert
  insert_Loaigiay(loaiGiay: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.post<any>(this.API, loaiGiay);
  }
  //
  update_Loaigiay(loaiGiay: any): Observable<any> {
    let search = new URLSearchParams();
    return this.httpClient.put<any>(this.API, loaiGiay);
  }
}
