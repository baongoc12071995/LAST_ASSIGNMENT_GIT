import { Injectable } from "@angular/core";
import { AngularFireAuth } from 'angularfire2/auth';
// import * as firebase from 'firebase/app';
import { Observable } from "rxjs";
import { Http } from "@angular/http";

@Injectable()
export class AuthService {
    private _apiUrl = "http://localhost:9099/";
    constructor(public afAuth: AngularFireAuth, private http: Http) { }

    doFacebookLogin() {
        // return new Promise<any>((resolve, reject) => {
        //     let provider = new firebase.auth.FacebookAuthProvider();
        //     this.afAuth.auth
        //         .signInWithPopup(provider)
        //         .then(res => {
        //             resolve(res);
        //             // console.log(res);
        //         }, err => {
        //             console.log(err);
        //             reject(err);
        //         })
        // })
    }

    doGoogleLogin() {
        // return new Promise<any>((resolve, reject) => {
        //     let provider = new firebase.auth.GoogleAuthProvider();
        //     provider.addScope('profile');
        //     provider.addScope('email');
        //     this.afAuth.auth
        //         .signInWithPopup(provider)
        //         .then(res => {
        //             resolve(res);
        //         })
        // })
    }

    checkKhachHang(option: any): Observable<any> {
        console.log(option);
        return this.http
            .get(this._apiUrl + "khachhang/findKhachHang", option)
            .map(response => {
                return response.json();
              });
    }
}