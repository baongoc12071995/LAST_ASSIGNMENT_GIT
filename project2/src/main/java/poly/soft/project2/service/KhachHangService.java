package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.KhachHang;

@Service
@Transactional
public interface KhachHangService {
	List<KhachHang> findAll();
	
	KhachHang findById(int id);
	
	KhachHang save(KhachHang khachHang);
	
	boolean delete(int id);

	KhachHang findByIdAccountAndEmail(String idAccount, String email);
}
