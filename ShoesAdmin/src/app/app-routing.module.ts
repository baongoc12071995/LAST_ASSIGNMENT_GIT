import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { IndexModule } from './components/index/index.module';
import { LoginComponent } from './components/login/login.component';

// Khai báo Router
const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full' },
  {
    path: 'login', component: LoginComponent
  },
  {
    path: 'index',
    loadChildren: () => IndexModule,
  }
  // ,
  // { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule {

}
