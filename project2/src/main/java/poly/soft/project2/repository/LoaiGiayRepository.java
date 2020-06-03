package poly.soft.project2.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.soft.project2.entity.LoaiGiay;

public interface LoaiGiayRepository extends JpaRepository<LoaiGiay, Integer> {

	@Query("from LoaiGiay order by id asc")
	List<LoaiGiay> getLoaiGiay();
}
