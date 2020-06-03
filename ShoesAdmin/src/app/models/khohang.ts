import {HangTrongKho} from './hangTrongKho';
export class Khohang {
    public id: string;
    public tenKho: string;
    public diaChi: string;
    public hangTrongKho: HangTrongKho;
    constructor(tenKho: string, diaChi: string, hangTrongKho: HangTrongKho) {
        this.tenKho = tenKho;
        this.diaChi = this.diaChi;
        this.hangTrongKho = hangTrongKho;
    }
}