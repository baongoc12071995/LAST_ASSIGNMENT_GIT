package poly.soft.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.soft.project2.entity.HangTrongKho;
import poly.soft.project2.entity.KichThuoc;
import poly.soft.project2.entity.SanPham;

public interface HangTrongKhoRepository extends JpaRepository<HangTrongKho, Integer> {

	HangTrongKho findBySanPhamAndKichThuoc(SanPham sanPham, KichThuoc kichThuoc);
}
