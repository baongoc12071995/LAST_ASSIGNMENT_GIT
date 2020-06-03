package poly.soft.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.soft.project2.entity.KichThuoc;

public interface KichThuocRepository extends JpaRepository<KichThuoc, Integer> {
	KichThuoc findByTenKichThuoc(String tenKichThuoc);
}
