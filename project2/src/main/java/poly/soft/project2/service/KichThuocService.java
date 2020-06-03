package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.KichThuoc;

@Service
@Transactional
public interface KichThuocService {
	List<KichThuoc> findAll();
	
	KichThuoc findById(int id);
	
	KichThuoc save(KichThuoc kichThuoc);
	
	boolean delete(int id);
}
