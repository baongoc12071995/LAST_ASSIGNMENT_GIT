import { Injectable } from '@angular/core';
import { HttpEvent, HttpInterceptor, HttpHandler, HttpRequest, HttpResponse, HttpErrorResponse } from '@angular/common/http';
import { Observable } from 'rxjs/observable';
import { Router } from '@angular/router';
@Injectable()
export class CheckInterceptor implements HttpInterceptor {
  user = {};
  constructor(
    private router: Router,
  ) {
    //localStorage.setItem('user', 'admin');
    //localStorage.removeItem('user');
  }

  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

    console.log("intercepted request ... ");
    // const clonedRequest = req.clone({ headers: req.headers.append('username', 'admin')
    // .set('password', '123456') });

    let user = JSON.parse(localStorage.getItem('user'));

    if (user != null) {
      console.log(user.tenTaiKhoan);
      console.log(user.matKhau);

      const clonedRequest = req.clone({
        params: req.params.set('username', user.tenTaiKhoan)
          .set('password', user.matKhau)
      });
      // console.log(clonedRequest.params.get('username'));
      // console.log(clonedRequest.params.get('password'));
      return next.handle(clonedRequest).do((event: HttpEvent<any>) => {
        if (event instanceof HttpResponse) {
          console.log("Success");
        }
      }, (err: any) => {
        if (err instanceof HttpErrorResponse) {
          console.log("Error 500");
          this.router.navigate(["/login"]);
        }
      });
    } else {
      localStorage.clear();
      this.router.navigate(["/login"]);
      return next.handle(req).do((event: HttpEvent<any>) => {
        if (event instanceof HttpResponse) {
          console.log("Success");
        }
      }, (err: any) => {
        if (err instanceof HttpErrorResponse) {
          console.log("Error 500");
          this.router.navigate(["/login"]);
        }
      });
    }
  }
}