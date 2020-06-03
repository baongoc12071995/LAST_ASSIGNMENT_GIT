import { LoaiGiay } from './loaiGiay';
import { HinhSanPham } from './hinhSanPham';
import { HangTrongKho } from './hangTrongKho';
export class ChitietSanpham{
    public id: number;
    public tenSanPham: string;
    public chiTiet: string;
    public donGia: number;
    public chietKhau: number;
    public loaiGiay: LoaiGiay;
    public hinhSanPham: HinhSanPham[]
    public hangTrongKho: HangTrongKho[];
}