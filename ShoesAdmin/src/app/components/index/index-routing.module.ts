import { NgModule, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes, Router } from '@angular/router';

// Component
import { IndexComponent } from './index.component';
import { DashboardComponent } from '../dashboard/dashboard.component';
import { TableNhanvienComponent } from '../table-nhanvien/table-nhanvien.component';
import { TableKhachhangComponent } from '../table-khachhang/table-khachhang.component';
import { TableHoadonComponent } from '../table-hoadon/table-hoadon.component';
import { TableSanphamComponent } from '../table-sanpham/table-sanpham.component';
import { FormSanphamComponent } from '../form-sanpham/form-sanpham.component';
import { FormUserComponent } from '../form-user/form-user.component';
import { InvoiceComponent } from '../invoice/invoice.component';
import { ChitietSanphamComponent } from '../chitiet-sanpham/chitiet-sanpham.component';
import { ChitietkhohangComponent } from '../chitietkhohang/chitietkhohang.component';
import { LoaigiayComponent } from '../loaigiay/loaigiay.component';
import { UserProfileComponent } from '../user-profile/user-profile.component';

// Khai báo Router
const routes: Routes = [
  {
    path: '',
    component: IndexComponent,
    // pathMatch: 'full',
    children: [
      { path: '', component: UserProfileComponent},
      { path: 'dashboard', component: DashboardComponent },
      { path: 'sanpham', component: TableSanphamComponent},
      { path: 'sanpham/:id', component: ChitietSanphamComponent },
      { path: 'sanpham/hangtrongkho/:id', component: ChitietkhohangComponent },
      { path: 'nhanvien/:id', component: FormUserComponent },
      { path: 'nhanvien', component: TableNhanvienComponent },
      { path: 'chitietkhohang', component: ChitietkhohangComponent},
      { path: 'khachhang', component: TableKhachhangComponent },
      { path: 'hoadon', component: TableHoadonComponent },
      { path: 'hoadon/:id', component: InvoiceComponent },
      { path: 'userProfile', component: UserProfileComponent },
      { path: 'themsanpham', component: FormSanphamComponent },
      { path: 'chitiet-sp', component: ChitietSanphamComponent },
      { path: 'loaigiay', component: LoaigiayComponent },
    ]
  }

];


@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

export class IndexRoutingModule {

}