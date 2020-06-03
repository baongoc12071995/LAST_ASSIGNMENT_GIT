import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { SumOfMoneyInMonth } from "../models/sumOfMoneyInMonth";
import { map } from "rxjs/operators";
import { Top10Products } from "../models/top10Products";
import { SumLoaiGiayByMonthAndYear } from "../models/SumLoaiGiayByMonthAndYear";
import { HttpClient } from "@angular/common/http";


@Injectable()

export class ThongKeService {
    API: string = "http://localhost:9099/";

    constructor(public httpClient: HttpClient) { }

    getLoaiGiayByMonthAndYear(month: number, year: number): Observable<SumLoaiGiayByMonthAndYear[]> {
        return this.httpClient
            .get<SumLoaiGiayByMonthAndYear[]>(this.API + 'thongke/loaigiaytrongthang?thang=' + month + '&nam=' + year);
    }

    getLoaiGiayByMonthInYear(tenLoaiGiay: string, year: number): Observable<SumOfMoneyInMonth[]> {
        return this.httpClient
            .get<SumOfMoneyInMonth[]>(this.API + 'thongke/loaigiaytrongnam?loaigiay=' + tenLoaiGiay + '&nam=' + year);
    }

    getTop10(month: number, year: number): Observable<Top10Products[]> {
        return this.httpClient
            .get<Top10Products[]>(this.API + 'thongke/top10products?thang=' + month + '&nam=' + year);
    }

    getSumOfMoney(year: number): Observable<SumOfMoneyInMonth[]> {
        return this.httpClient
            .get<SumOfMoneyInMonth[]>(this.API + 'thongke/' + year);
    }
}