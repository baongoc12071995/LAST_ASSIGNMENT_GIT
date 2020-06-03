import { TestBed, inject } from '@angular/core/testing';

import { KichthuocService } from './kichthuoc.service';

describe('KichthuocService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [KichthuocService]
    });
  });

  it('should be created', inject([KichthuocService], (service: KichthuocService) => {
    expect(service).toBeTruthy();
  }));
});
