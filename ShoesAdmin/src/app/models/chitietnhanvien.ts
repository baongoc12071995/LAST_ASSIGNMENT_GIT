export class Chitietnhanvien{
    public id: string;
    public tenNhanVien: string;
    public gioiTinh: string;
    public ngaySinh: string;
    public diaChi: string;
    public soDienThoai: string;
    public email: string;

    constructor(tenNhanvien: string, gioiTinh: string, ngaySinh: string, diaChi: string, soDienThoai: string, email: string){
    	this.tenNhanVien = tenNhanvien;
    	this.gioiTinh = gioiTinh;
    	this.ngaySinh = ngaySinh;
    	this.diaChi = diaChi;
    	this.soDienThoai = soDienThoai;
    	this.email = email;
    }
}