package poly.soft.project2.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.entity.HinhSanPham;
import poly.soft.project2.repository.HinhSanPhamRepository;
import poly.soft.project2.service.HinhSanPhamService;

@Service
public class HinhSanPhamServiceImpl implements HinhSanPhamService {
	
	@Autowired
	HinhSanPhamRepository hinhSanPhamRepository;

	@Override
	public List<HinhSanPham> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HinhSanPham findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HinhSanPham save(HinhSanPham hinhSanPham) {
		HinhSanPham hsp = hinhSanPhamRepository.save(hinhSanPham);
		return hsp;
	}

	@Override
	public void delete(int id) {
		hinhSanPhamRepository.deleteById(id);
	}
	
}
