import { HinhSanPham } from './hinhSanPham';
import { LoaiGiay } from './loaiGiay';
import { HangTrongKho } from './hangTrongKho';

export class Sanpham{
    id: number;
    tenSanPham: string;
    chiTiet: string;
    hinhSanPham: HinhSanPham;
    gioiTinh: string;
    donGia: number;
    chietKhau: number;
    loaiGiay: LoaiGiay;
    hangTrongKho: HangTrongKho[];
    
}