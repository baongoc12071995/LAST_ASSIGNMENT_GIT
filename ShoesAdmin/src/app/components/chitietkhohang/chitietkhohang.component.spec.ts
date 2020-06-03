import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietkhohangComponent } from './chitietkhohang.component';

describe('ChitietkhohangComponent', () => {
  let component: ChitietkhohangComponent;
  let fixture: ComponentFixture<ChitietkhohangComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietkhohangComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietkhohangComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
