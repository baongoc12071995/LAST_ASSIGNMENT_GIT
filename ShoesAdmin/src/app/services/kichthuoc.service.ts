import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Response, RequestOptions } from "@angular/http";
import { Kichthuoc } from '../models/kichthuoc';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class KichthuocService {

  constructor(public httpClient: HttpClient) { }
  public API: string = "http://localhost:9099/";

  getListSize(): Observable<Kichthuoc[]> {
    return this.httpClient.get<Kichthuoc>(this.API + "kichthuoc")
      .catch(this.handleError);
  }

  private handleError(error: Response) {
    return Observable.throw(error.statusText);
  }

}

