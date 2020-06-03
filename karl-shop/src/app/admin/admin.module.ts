import { NgModule } from "@angular/core";
import { AdminComponent } from "./admin.component";
import { CommonModule } from "@angular/common";
import { AdminRoutingModule } from "./admin-routing.module";
import {
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatTabsModule,
    MatIconModule
} from '@angular/material';
import { ReactiveFormsModule, FormsModule } from "@angular/forms";

@NgModule({
    imports: [
        CommonModule,
        AdminRoutingModule,
        MatFormFieldModule,
        MatInputModule,
        MatButtonModule,
        MatTabsModule,
        MatIconModule,
        FormsModule,
        ReactiveFormsModule
    ],
    declarations: [
        AdminComponent
    ]
})

export class AdminModule {

}