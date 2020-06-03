import { NgModule } from "@angular/core";
import { SideBarComponent } from './side-bar/side-bar.component';
import { NgxPaginationModule } from 'ngx-pagination';
import { CartComponent } from "./cart/cart.component";
import { CheckoutComponent } from "./checkout/checkout.component";
import { FooterComponent } from "./footer/footer.component";
import { HeaderComponent } from "./header/header.component";
import { HomeComponent } from "./home/home.component";
import { LeftBarComponent } from "./left-bar/left-bar.component";
import { ProductDetailComponent } from "./product-detail/product-detail.component";
import { ProductsComponent } from "./products/products.component";
import { ProductCategoryComponent } from "./products/product-category/product-category.component";
import { UserLoginComponent } from "./user-login/user-login.component";
import { UserProfileComponent } from "./user-login/user-profile/user-profile.component";
import { CommonModule } from "@angular/common";
import { IndexRoutingModule } from "./index-routing.module";
import { IndexComponent } from "./index.component";
import {
    MatButtonModule,
    MatCheckboxModule,
    MatTabsModule,
    MatFormFieldModule,
    MatSelectModule,
    MatOptionModule,
    MatInputModule,
    MatIconModule,
    MatRadioModule,
    MatPaginatorModule,
    MatTableModule
} from '@angular/material';
import { ReactiveFormsModule, FormsModule } from "@angular/forms";
import { CdkTableModule } from "@angular/cdk/table";
import { AngularFireAuthModule } from "angularfire2/auth";
import { LienHeComponent } from "./lienhe/lienhe.component";
import { AboutComponent } from "./about/about.component";

@NgModule({
    imports: [
        NgxPaginationModule,
        CommonModule,
        IndexRoutingModule,
        MatButtonModule,
        MatCheckboxModule,
        MatTabsModule,
        MatFormFieldModule,
        MatSelectModule,
        MatOptionModule,
        MatInputModule,
        ReactiveFormsModule,
        FormsModule,
        MatIconModule,
        MatRadioModule,
        MatPaginatorModule,
        CdkTableModule,
        MatTableModule,
        AngularFireAuthModule
    ],
    declarations: [
        SideBarComponent,
        CartComponent,
        CheckoutComponent,
        FooterComponent,
        HeaderComponent,
        HomeComponent,
        LeftBarComponent,
        ProductDetailComponent,
        ProductsComponent,
        ProductCategoryComponent,
        UserLoginComponent,
        UserProfileComponent,
        IndexComponent,
        LienHeComponent,
        AboutComponent
    ]
})
export class IndexModule {

}