package poly.soft.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.soft.project2.entity.NhanVien;

public interface NhanVienRepository extends JpaRepository<NhanVien, Integer> {
	
	NhanVien findByTenNhanVien(String tenNhanVien);
}
