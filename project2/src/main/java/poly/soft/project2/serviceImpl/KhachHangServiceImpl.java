package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.KhachHang;
import poly.soft.project2.repository.KhachHangRepository;
import poly.soft.project2.service.KhachHangService;

@Service
public class KhachHangServiceImpl implements KhachHangService {

	@Autowired
	KhachHangRepository khachHangRepository;

	@Override
	public List<KhachHang> findAll() {
		return khachHangRepository.findAll();
	}

	@Override
	public KhachHang findById(int id) {
		KhachHang khachHang = khachHangRepository.findById(id).orElse(null);
		return khachHang;
	}
	
	@Override
	public KhachHang findByIdAccountAndEmail(String idAccount, String email) {
		KhachHang khachHang = khachHangRepository.findByIdAccount(idAccount);
		return khachHang;
	}

	@Override
	public KhachHang save(KhachHang khachHang) {
		KhachHang khachhang = khachHangRepository.save(khachHang);
		return khachhang;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
