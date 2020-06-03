package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.NhanVien;
import poly.soft.project2.repository.NhanVienRepository;
import poly.soft.project2.service.NhanVienService;

@Service
public class NhanVienServiceImpl implements NhanVienService {
	
	@Autowired
	NhanVienRepository nhanVienRepository;
	
	@Override
	public List<NhanVien> findAll() {
		return nhanVienRepository.findAll();
	}

	@Override
	public NhanVien findById(int id) {
		NhanVien nhanvien  = nhanVienRepository.findById(id).get();
		return nhanvien;
	}

	@Override
	public NhanVien save(NhanVien nhanVien) {
		NhanVien nhanvien = nhanVienRepository.save(nhanVien);
		return nhanvien;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
