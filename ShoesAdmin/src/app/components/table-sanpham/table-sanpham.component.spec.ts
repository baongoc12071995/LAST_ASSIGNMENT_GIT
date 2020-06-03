import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TableSanphamComponent } from './table-sanpham.component';

describe('TableSanphamComponent', () => {
  let component: TableSanphamComponent;
  let fixture: ComponentFixture<TableSanphamComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TableSanphamComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TableSanphamComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
