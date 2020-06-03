import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TableHoadonComponent } from './table-hoadon.component';

describe('TableHoadonComponent', () => {
  let component: TableHoadonComponent;
  let fixture: ComponentFixture<TableHoadonComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TableHoadonComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TableHoadonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
