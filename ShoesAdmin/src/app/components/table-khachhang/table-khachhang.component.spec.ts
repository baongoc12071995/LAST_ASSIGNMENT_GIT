import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TableKhachhangComponent } from './table-khachhang.component';

describe('TableKhachhangComponent', () => {
  let component: TableKhachhangComponent;
  let fixture: ComponentFixture<TableKhachhangComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TableKhachhangComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TableKhachhangComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
