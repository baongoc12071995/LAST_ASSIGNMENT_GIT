package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.NhanVien;

@Service
@Transactional
public interface NhanVienService {
	List<NhanVien> findAll();

	NhanVien findById(int id);

	NhanVien save(NhanVien nhanVien);

	boolean delete(int id);
}
