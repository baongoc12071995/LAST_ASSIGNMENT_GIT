package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.TaiKhoan;

@Service
@Transactional
public interface TaiKhoanService {
	List<TaiKhoan> findAll();
	
	TaiKhoan findById(int id);
	
	TaiKhoan save(TaiKhoan taiKhoan);
	
	boolean delete(int id);
	
	TaiKhoan findByTenTaiKhoanAndMatKhau(String tenTaiKhoan,String matKhau);
}
