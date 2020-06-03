// import thu vien
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule, RequestOptions } from '@angular/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';


// import Components
import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';

// import service
import { IndexModule } from './components/index/index.module';
import { IndexRoutingModule } from './components/index/index-routing.module';
import { CheckInterceptor } from './interceptor/check.interceptor';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { ErrorValidateComponent } from './components/error-validate/error-validate.component';

@NgModule({
  // khai bao component
  declarations: [
    AppComponent,
    LoginComponent,
    ErrorValidateComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    IndexModule,
    IndexRoutingModule,
    HttpClientModule
  ],
  providers: [{
    provide: HTTP_INTERCEPTORS,
    useClass: CheckInterceptor,
    multi: true
  }],
  bootstrap: [AppComponent]
})
export class AppModule { }
