import { ImageProduct } from "./image-product";
import { HomeLoaiGiay } from "./home-loaigiay";
import { StorageProduct } from "./storage-product";

export interface InvoiceProduct {
    id: number;
    tenSanPham: string;
    chiTiet: string;
    hinhSanPham: ImageProduct[];
    gioiTinh: string;
    donGia: number;
    chietKhau: number;
    loaiGiay: HomeLoaiGiay;
    hangTrongKho: StorageProduct[];
}