import { NgModule } from '@angular/core';
import { RouterModule, Routes, Router } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';
import { CheckoutComponent } from './components/checkout/checkout.component';
import { CartComponent } from './components/cart/cart.component';
import { PageNotFoundComponent } from './page-not-found.component';
import { IndexComponent } from './components/index.component';
import { IndexModule } from './components/index.module';
import { AdminModule } from './admin/admin.module';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  {
    path: 'home',
    loadChildren: () => IndexModule,
  },
  {
    path: 'admin',
    loadChildren: () => AdminModule,
  },
  { path: '**', component: PageNotFoundComponent}
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes)
  ],
  exports: [
    RouterModule
  ]
})

export class AppRoutingModule {
  constructor(private router: Router) {
    router.events.subscribe(() => {
      window.scrollTo(0, 0);
    })
  }
}
