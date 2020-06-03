package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.ChiTietHoaDon;
import poly.soft.project2.entity.SanPham;
@Service
@Transactional
public interface ChiTietHoaDonService {
	List<ChiTietHoaDon> findAll();
	
	ChiTietHoaDon findById(int id);
	
	ChiTietHoaDon save(ChiTietHoaDon chiTietHoaDon);
	
	boolean delete(int id);
}
