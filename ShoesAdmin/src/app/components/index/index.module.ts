import { NgModule } from "@angular/core";
import { UploadFileService } from "../../services/uploadfile.service";
import { LoaigiayService } from "../../services/loaigiay.service";
import { KichthuocService } from "../../services/kichthuoc.service";
import { HoadonService } from "../../services/hoadon.service";
import { UserService } from "../../services/user.service";
import { SanphamService } from "../../services/sanpham.service";
import { IndexRoutingModule } from "./index-routing.module";
// import thu vien
import { HttpModule } from '@angular/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AngularFireDatabaseModule } from 'angularfire2/database';
import { AngularFireModule } from 'angularfire2';
import * as FusionCharts from 'fusioncharts';
import * as Charts from 'fusioncharts/fusioncharts.charts';
import * as FintTheme from 'fusioncharts/themes/fusioncharts.theme.fint';
import { FusionChartsModule } from 'angular4-fusioncharts';
import { IndexComponent } from "./index.component";
import { DashboardComponent } from "../dashboard/dashboard.component";
import { TableNhanvienComponent } from "../table-nhanvien/table-nhanvien.component";
import { TableKhachhangComponent } from "../table-khachhang/table-khachhang.component";
import { TableHoadonComponent } from "../table-hoadon/table-hoadon.component";
import { TableSanphamComponent } from "../table-sanpham/table-sanpham.component";
import { FormUserComponent } from "../form-user/form-user.component";
import { FormSanphamComponent } from "../form-sanpham/form-sanpham.component";
import { ChitietSanphamComponent } from "../chitiet-sanpham/chitiet-sanpham.component";
import { InvoiceComponent } from "../invoice/invoice.component";
import { ChitietkhohangComponent } from "../chitietkhohang/chitietkhohang.component";
import { LoaigiayComponent } from "../loaigiay/loaigiay.component";
import { ToastModule } from "../../../../node_modules/ng2-toastr";
import { environment } from "../../../environments/environment";
import { CommonModule } from '../../../../node_modules/@angular/common';
import { HttpClientModule, HTTP_INTERCEPTORS } from "../../../../node_modules/@angular/common/http";
import { CheckInterceptor } from "../../interceptor/check.interceptor";
import { UserProfileComponent } from "../user-profile/user-profile.component";

@NgModule({
  declarations: [
    IndexComponent,
    DashboardComponent,
    TableNhanvienComponent,
    TableKhachhangComponent,
    TableHoadonComponent,
    TableSanphamComponent,
    FormSanphamComponent,
    FormUserComponent,
    InvoiceComponent,
    ChitietSanphamComponent,
    ChitietkhohangComponent,
    LoaigiayComponent,
    UserProfileComponent
  ],
  imports: [
    HttpModule,
    HttpClientModule,
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    ToastModule.forRoot(),
    AngularFireDatabaseModule,
    FusionChartsModule.forRoot(FusionCharts, Charts, FintTheme),
    AngularFireModule.initializeApp(environment.firebase),
    IndexRoutingModule
  ],
  providers: [
    UserService,
    SanphamService,
    HoadonService,
    KichthuocService,
    LoaigiayService,
    UploadFileService,
    {
      provide: HTTP_INTERCEPTORS,
      useClass: CheckInterceptor,
      multi: true
    }
  ],
  bootstrap: []
})

export class IndexModule { }