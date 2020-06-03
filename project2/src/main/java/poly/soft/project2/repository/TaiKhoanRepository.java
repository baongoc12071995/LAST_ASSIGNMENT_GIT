package poly.soft.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.soft.project2.entity.TaiKhoan;

public interface TaiKhoanRepository extends JpaRepository<TaiKhoan, Integer> {

	TaiKhoan findByTenTaiKhoan(String tenTaiKhoan);
	
	@Query(value="FROM TaiKhoan t where t.tenTaiKhoan=?1 and t.matKhau=?2")
	TaiKhoan findTaiKhoan(String tenTaiKhoan,String matKhau);
}
