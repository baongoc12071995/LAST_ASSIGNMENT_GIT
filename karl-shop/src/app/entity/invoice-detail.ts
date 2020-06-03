import { InvoiceProduct } from "./Invoice-product";

export interface InvoiceDetail {
    id: number;
    sanPham:InvoiceProduct;
    soLuong: number;
    tenKichThuoc: string;
    thanhTien: number;
}