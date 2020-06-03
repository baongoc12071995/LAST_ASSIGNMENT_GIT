import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LoaigiayComponent } from './loaigiay.component';

describe('LoaigiayComponent', () => {
  let component: LoaigiayComponent;
  let fixture: ComponentFixture<LoaigiayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LoaigiayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LoaigiayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
