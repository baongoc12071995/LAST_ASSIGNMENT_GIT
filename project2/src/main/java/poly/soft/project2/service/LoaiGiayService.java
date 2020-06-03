package poly.soft.project2.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import poly.soft.project2.entity.LoaiGiay;
import poly.soft.project2.entity.SanPham;

@Service
@Transactional
public interface LoaiGiayService {
	List<LoaiGiay> getLoaiGiay();

	LoaiGiay findById(int id);

	LoaiGiay save(LoaiGiay loaiGiay);

	boolean delete(int id);
}
