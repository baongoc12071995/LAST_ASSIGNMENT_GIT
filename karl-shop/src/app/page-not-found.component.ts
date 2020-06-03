import { Component } from '@angular/core';


@Component({
    template:`
    <div class="wrap">
        <h1>404 Page not found</h1>
    </div>`,
    styles:[
        'h1 {text-align: center; text-transform: uppercase; font-size: 30px; color: red;}'    
    ]
})
export class PageNotFoundComponent {

}