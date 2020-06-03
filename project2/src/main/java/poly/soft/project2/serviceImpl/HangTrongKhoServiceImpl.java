package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.HangTrongKho;
import poly.soft.project2.repository.HangTrongKhoRepository;
import poly.soft.project2.service.HangTrongKhoService;

@Service
public class HangTrongKhoServiceImpl implements HangTrongKhoService {
	
	@Autowired
	HangTrongKhoRepository hangTrongKhoRepository;

	@Override
	public List<HangTrongKho> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HangTrongKho findById(int id) {
		HangTrongKho htk = hangTrongKhoRepository.findById(id).orElse(null);
		return htk;
	}

	@Override
	public HangTrongKho save(HangTrongKho hangTrongKho) {
		HangTrongKho htk = hangTrongKhoRepository.save(hangTrongKho);
		return htk;
	}

	@Override
	public boolean delete(int id) {
		hangTrongKhoRepository.deleteById(id);
		return true;
	}
		
}
