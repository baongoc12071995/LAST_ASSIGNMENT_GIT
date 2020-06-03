package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.HangTrongKho;
import poly.soft.project2.entity.SanPham;

@Service
@Transactional
public interface HangTrongKhoService {
	List<HangTrongKho> findAll();
	
	HangTrongKho findById(int id);
	
	HangTrongKho save(HangTrongKho hangTrongKho);
	
	boolean delete(int id);
}
