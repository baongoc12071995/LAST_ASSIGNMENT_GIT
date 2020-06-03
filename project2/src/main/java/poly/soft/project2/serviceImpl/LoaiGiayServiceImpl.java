package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.LoaiGiay;
import poly.soft.project2.repository.LoaiGiayRepository;
import poly.soft.project2.service.LoaiGiayService;

@Service
public class LoaiGiayServiceImpl implements LoaiGiayService {

	@Autowired
	LoaiGiayRepository loaiGiayRepository;
	
	@Override
	public List<LoaiGiay> getLoaiGiay() {
		return loaiGiayRepository.getLoaiGiay();
	}

	@Override
	public LoaiGiay findById(int id) {
		LoaiGiay loaiGiay = loaiGiayRepository.findById(id).get();
		return loaiGiay;
	}

	@Override
	public LoaiGiay save(LoaiGiay loaiGiay) {
		LoaiGiay  loaigiay= loaiGiayRepository.save(loaiGiay);
		return loaigiay;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
