package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.dto.SanPhamAdminDTO;
import poly.soft.project2.dto.SanPhamHomePageDTO;
import poly.soft.project2.entity.SanPham;
@Service
@Transactional
public interface SanPhamService {
	List<SanPham> findAll();
	
	SanPham findById(int id);
	
	SanPham save(SanPham sanPham);
	
	boolean delete(int id);
	
	List<SanPhamHomePageDTO> getListSanPhamHomePage(String tenLoai, int limit);
	
	List<SanPhamHomePageDTO> getListSanPhamByCategory(String tenLoai);
	
	List<SanPhamHomePageDTO> getListSanPhamByKichThuoc(int idKichThuoc);
	
	List<SanPhamHomePageDTO> getListSanPhamByTenSanPham(String tenSanPham);
	
	SanPham saveSanPham(SanPhamAdminDTO spDTO);
	
	SanPham updateSanPham(SanPhamAdminDTO spDTO);
	
}
