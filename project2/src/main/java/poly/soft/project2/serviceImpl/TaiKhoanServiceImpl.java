package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.TaiKhoan;
import poly.soft.project2.repository.TaiKhoanRepository;
import poly.soft.project2.service.TaiKhoanService;

@Service
public class TaiKhoanServiceImpl implements TaiKhoanService {

	@Autowired
	TaiKhoanRepository taiKhoanRepository;
	
	@Override
	public List<TaiKhoan> findAll() {
		return taiKhoanRepository.findAll();
	}

	@Override
	public TaiKhoan findById(int id) {
		TaiKhoan tk = taiKhoanRepository.findById(id).orElse(null);
		return tk;
	}

	@Override
	public TaiKhoan save(TaiKhoan taiKhoan) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public TaiKhoan findByTenTaiKhoanAndMatKhau(String tenTaiKhoan, String matKhau) {
		TaiKhoan taikhoan = taiKhoanRepository.findTaiKhoan(tenTaiKhoan, matKhau);
		return taikhoan;
	}
	
}
