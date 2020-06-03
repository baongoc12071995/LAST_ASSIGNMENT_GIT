export class Hoadon {
    public id: string;
    public tenKhachHang: string;
    public tenNhanVien: string;
    public trangThai: string;
    public ngay: Date;

    constructor(tenKhachHang: string, tenNhanVien:string, trangThai: string, ngay: Date){
        this.tenKhachHang = tenKhachHang;
        this.tenNhanVien = tenNhanVien;
        this.trangThai = trangThai;
        this.ngay = ngay;
    }
}