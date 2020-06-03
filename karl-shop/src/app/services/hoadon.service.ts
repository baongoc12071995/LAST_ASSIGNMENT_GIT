import { Injectable } from '@angular/core';
import { Http, Response, RequestOptions } from "@angular/http";
import { Observable } from 'rxjs/Observable';
import { HttpHeaders } from '@angular/common/http';
import "rxjs/Rx";
import { DetailProducts } from '../entity/detail-products';
@Injectable()
export class HoaDonService {

    private _apiUrl = "http://localhost:9099/";
    constructor(private http: Http) { }

    saveHoaDon(id: number, hoaDon: any): Observable<any> {

        let search = new URLSearchParams();

        return this.http.post(this._apiUrl + "hoadon/create/" + id, hoaDon, { search })
            .map(response => {
                return response.json();
            })
            .catch(this.handleError);
    }

    private handleError(error: Response) {
        return Observable.throw(error.statusText);
    }
}
