import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-error-validate',
  templateUrl: './error-validate.component.html',
  styleUrls: ['./error-validate.component.css']
})
export class ErrorValidateComponent implements OnInit {
@Input('control') control;

  constructor() { }

  get message(){
    for(let err in this.control.error){

    }
    return null;
  }
  ngOnInit() {
  }

}
