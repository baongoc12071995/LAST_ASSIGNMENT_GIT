package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.Quyen;

@Service
@Transactional
public interface QuyenService {
	List<Quyen> findAll();
	
	Quyen findById(int id);
	
	Quyen save(Quyen quyen);
	
	boolean delete(int id);
}	
