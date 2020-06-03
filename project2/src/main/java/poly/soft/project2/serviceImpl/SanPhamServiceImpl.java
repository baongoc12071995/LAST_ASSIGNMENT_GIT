package poly.soft.project2.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.dto.SanPhamAdminDTO;
import poly.soft.project2.dto.SanPhamHomePageDTO;
import poly.soft.project2.entity.SanPham;
import poly.soft.project2.repository.LoaiGiayRepository;
import poly.soft.project2.repository.SanPhamRepository;
import poly.soft.project2.service.SanPhamService;

@Service
@Transactional
public class SanPhamServiceImpl  implements SanPhamService{

	@Autowired
	SanPhamRepository sanPhamRepository;
	
	@Autowired
	LoaiGiayRepository loaiGiayRepository;
	
	@Override
	public List<SanPham> findAll() {
		return sanPhamRepository.findAll();
	}

	@Override
	public SanPham findById(int id) {
		Optional<SanPham> sp = sanPhamRepository.findById(id);
		return sp.orElse(null);
	}

	@Override
	public SanPham save(SanPham sanPham) {
		SanPham sp = sanPhamRepository.save(sanPham);
		return sp;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public List<SanPhamHomePageDTO> getListSanPhamHomePage(String tenLoai, int limit) {
		List<Object[]> list = sanPhamRepository.getListSanPhamHomePage(tenLoai, limit);
		List<SanPhamHomePageDTO> listSPHomePage = new ArrayList<>();
		for(Object[] arr : list) {
			SanPhamHomePageDTO sp = new SanPhamHomePageDTO();
			sp.setId(Integer.parseInt(String.valueOf(arr[0])));
			sp.setTenSanPham(String.valueOf(arr[1]));
			sp.setChiTiet(String.valueOf(arr[2]));
			sp.setDonGia(Double.parseDouble(String.valueOf(arr[3])));
			sp.setChietKhau(Double.parseDouble(String.valueOf(arr[4])));
			sp.setHinh(String.valueOf(arr[5]));
			listSPHomePage.add(sp);
		}
		return listSPHomePage;
	}

	@Override
	public List<SanPhamHomePageDTO> getListSanPhamByCategory(String tenLoai) {
		List<Object[]> list = sanPhamRepository.getListSanPhamByCategory(tenLoai);
		List<SanPhamHomePageDTO> listSPByCategory = new ArrayList<>();
		for(Object[] arr : list) {
			SanPhamHomePageDTO sp = new SanPhamHomePageDTO();
			sp.setId(Integer.parseInt(String.valueOf(arr[0])));
			sp.setTenSanPham(String.valueOf(arr[1]));
			sp.setChiTiet(String.valueOf(arr[2]));
			sp.setDonGia(Double.parseDouble(String.valueOf(arr[3])));
			sp.setChietKhau(Double.parseDouble(String.valueOf(arr[4])));
			sp.setHinh(String.valueOf(arr[5]));			
			listSPByCategory.add(sp);
		}
		return listSPByCategory;
	}
	
	@Override
	public List<SanPhamHomePageDTO> getListSanPhamByKichThuoc(int idKichThuoc) {
		List<Object[]> list = sanPhamRepository.getListSanPhamByKichThuoc(idKichThuoc);
		List<SanPhamHomePageDTO> listSPByKichThuoc = new ArrayList<>();
		for(Object[] arr : list) {
			SanPhamHomePageDTO sp = new SanPhamHomePageDTO();
			sp.setId(Integer.parseInt(String.valueOf(arr[0])));
			sp.setTenSanPham(String.valueOf(arr[1]));
			sp.setChiTiet(String.valueOf(arr[2]));
			sp.setDonGia(Double.parseDouble(String.valueOf(arr[3])));
			sp.setChietKhau(Double.parseDouble(String.valueOf(arr[4])));
			sp.setHinh(String.valueOf(arr[5]));			
			listSPByKichThuoc.add(sp);
			
		}
		return listSPByKichThuoc;
	}

	@Override
	public List<SanPhamHomePageDTO> getListSanPhamByTenSanPham(String tenSanPham) {
		List<Object[]> list = sanPhamRepository.getListSanPhamByTenSanPham(tenSanPham);
		List<SanPhamHomePageDTO> listByProduct = new ArrayList<>();
		for(Object[] arr : list) {
			SanPhamHomePageDTO sp = new SanPhamHomePageDTO();
			sp.setId(Integer.parseInt(String.valueOf(arr[0])));
			sp.setTenSanPham(String.valueOf(arr[1]));
			sp.setChiTiet(String.valueOf(arr[2]));
			sp.setDonGia(Double.parseDouble(String.valueOf(arr[3])));
			sp.setChietKhau(Double.parseDouble(String.valueOf(arr[4])));
			sp.setHinh(String.valueOf(arr[5]));		
			listByProduct.add(sp);
		}
		return listByProduct;
	}

	@Override
	public SanPham saveSanPham(SanPhamAdminDTO spDTO) {
		SanPham sp = new SanPham();
		sp.setTenSanPham(spDTO.getTenSanPham());
		sp.setLoaiGiay(loaiGiayRepository.findById(spDTO.getLoaiGiayId()).orElse(null));
		sp.setDonGia(spDTO.getDonGia());
		sp.setChietKhau(spDTO.getChietKhau());
		sp.setChiTiet(spDTO.getChiTiet());
		
		SanPham newSP = sanPhamRepository.save(sp);
		return newSP;
	}
	
	@Override
	public SanPham updateSanPham(SanPhamAdminDTO spDTO) {
		SanPham sp = sanPhamRepository.findById(spDTO.getId()).orElse(null);
		sp.setTenSanPham(spDTO.getTenSanPham());
		sp.setLoaiGiay(loaiGiayRepository.findById(spDTO.getLoaiGiayId()).orElse(null));
		sp.setDonGia(spDTO.getDonGia());
		sp.setChietKhau(spDTO.getChietKhau());
		sp.setChiTiet(spDTO.getChiTiet());
		
		SanPham newSP = sanPhamRepository.save(sp);
		return newSP;
	}
		
}
