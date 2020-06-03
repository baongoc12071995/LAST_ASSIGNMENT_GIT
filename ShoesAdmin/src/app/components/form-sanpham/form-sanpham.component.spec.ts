import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormSanphamComponent } from './form-sanpham.component';

describe('FormSanphamComponent', () => {
  let component: FormSanphamComponent;
  let fixture: ComponentFixture<FormSanphamComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormSanphamComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormSanphamComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
