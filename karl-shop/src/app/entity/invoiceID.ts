import { InvoiceDetail } from "./invoice-detail";
import { Customer } from "./customer";
import { Employee } from "./employee";

export interface InvoiceID {
    ngay: string;
    tongTien: number;
    chiTietHoaDon: InvoiceDetail[];
}