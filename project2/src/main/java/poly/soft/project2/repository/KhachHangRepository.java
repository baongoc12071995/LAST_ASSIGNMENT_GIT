package poly.soft.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.soft.project2.entity.KhachHang;

public interface KhachHangRepository extends JpaRepository<KhachHang, Integer> {

	KhachHang findByIdAccount(String idAccount);
}
