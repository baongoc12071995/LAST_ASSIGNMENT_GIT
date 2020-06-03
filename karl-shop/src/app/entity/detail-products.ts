import { ImageProduct } from "./image-product";
import { HomeLoaiGiay } from "./home-loaigiay";
import { StorageProduct } from "./storage-product";
import { BillDetail } from "./bill-detail";

export interface DetailProducts {
    id: number;
    tenSanPham: string;
    chiTiet: string;
    hinhSanPham: ImageProduct[];
    loaiGiay: HomeLoaiGiay;
    hangTrongKho: StorageProduct[];
    chiTietHoaDon: BillDetail[];
    donGia: number;
    chietKhau: number;
}