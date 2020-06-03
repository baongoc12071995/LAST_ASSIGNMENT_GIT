import { NgModule } from "@angular/core";
import { Routes, RouterModule, Router } from "@angular/router";
import { HomeComponent } from "./home/home.component";
import { CartComponent } from "./cart/cart.component";
import { CheckoutComponent } from "./checkout/checkout.component";
import { ProductsComponent } from "./products/products.component";
import { ProductDetailComponent } from "./product-detail/product-detail.component";
import { ProductCategoryComponent } from "./products/product-category/product-category.component";
import { IndexComponent } from "./index.component";
import { UserLoginComponent } from "./user-login/user-login.component";
import { UserProfileComponent } from "./user-login/user-profile/user-profile.component";
import { AboutComponent } from "./about/about.component";
import { LienHeComponent } from "./lienhe/lienhe.component";


const indexRoutes: Routes = [
    {
        path: '',
        component: IndexComponent,
        children: [
            { path: '', component: HomeComponent },
            { path: 'cart', component: CartComponent },
            { path: 'checkout', component: CheckoutComponent },
            { path: 'products', component: ProductsComponent },
            { path: 'detail/:id', component: ProductDetailComponent },
            { path: 'category/:name', component: ProductCategoryComponent },
            { path: 'size/:idsize', component: ProductCategoryComponent },
            { path: 'account', component: UserLoginComponent},
            { path: 'account/:id', component: UserProfileComponent},
            { path: 'about', component: AboutComponent},
            { path: 'lienhe', component:LienHeComponent}
        ]
    }
];

@NgModule({
    imports: [
        RouterModule.forChild(indexRoutes)
    ],
    exports: [
        RouterModule
    ]
})
export class IndexRoutingModule {

    
}