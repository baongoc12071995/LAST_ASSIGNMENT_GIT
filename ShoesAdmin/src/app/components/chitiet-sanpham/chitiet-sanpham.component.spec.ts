import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietSanphamComponent } from './chitiet-sanpham.component';

describe('ChitietSanphamComponent', () => {
  let component: ChitietSanphamComponent;
  let fixture: ComponentFixture<ChitietSanphamComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietSanphamComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietSanphamComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
