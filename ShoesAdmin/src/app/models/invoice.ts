import { Chitiethoadon } from "./chitiethoadon";
import { Nhanvien } from "./nhanvien";
import { Khachhang } from "./khachhang";

export class Invoice {
    id: number;
    ngay: Date;
    tongTien: number;
    trangThai: string;
    thanhToan: string;
    ghiChu: string;
    chiTietHoaDon: Chitiethoadon[];
    nhanVien: Nhanvien;
    khachHang: Khachhang;
}