package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.HinhSanPham;
import poly.soft.project2.entity.SanPham;

@Service
@Transactional
public interface HinhSanPhamService {
	List<HinhSanPham> findAll();
	
	HinhSanPham findById(int id);
	
	HinhSanPham save(HinhSanPham hinhSanPham);
	
	void delete(int id);
}
