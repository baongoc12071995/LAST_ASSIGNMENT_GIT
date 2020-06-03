package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.KichThuoc;
import poly.soft.project2.repository.KichThuocRepository;
import poly.soft.project2.service.KichThuocService;

@Service
public class KichThuocServieImpl implements KichThuocService {
	
	@Autowired
	KichThuocRepository kichThuocRepository;
	
	@Override
	public List<KichThuoc> findAll() {
		
		return kichThuocRepository.findAll();
	}

	@Override
	public KichThuoc findById(int id) {
		KichThuoc kichthuoc = kichThuocRepository.findById(id).get();
		return kichthuoc;
	}

	@Override
	public KichThuoc save(KichThuoc kichThuoc) {
		KichThuoc kichthuoc  = kichThuocRepository.save(kichThuoc);
		return kichthuoc;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
