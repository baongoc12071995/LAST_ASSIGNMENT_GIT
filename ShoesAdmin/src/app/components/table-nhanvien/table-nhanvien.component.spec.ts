import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TableNhanvienComponent } from './table-nhanvien.component';

describe('TableNhanvienComponent', () => {
  let component: TableNhanvienComponent;
  let fixture: ComponentFixture<TableNhanvienComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TableNhanvienComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TableNhanvienComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
