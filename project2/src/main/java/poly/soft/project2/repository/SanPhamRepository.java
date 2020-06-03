package poly.soft.project2.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import poly.soft.project2.entity.SanPham;

public interface SanPhamRepository extends JpaRepository<SanPham, Integer>{
 
//	@Query("select SP.id, SP.tenSanPham, HTK.donGia, HTK.chietKhau, HSP.hinh from LoaiGiay LG inner join SanPham SP "
//			+ "inner join HinhSanPham HSP inner join HangTrongKho HTK where LG.tenLoai =?1 group by SP.tenSanPham")
//	List<Object[]> getListSanPhamHomePage(String tenLoai);
	
	@Query(value="select SP.id, SP.ten_san_pham, SP.chi_tiet, SP.don_gia, SP.chiet_khau, HSP.hinh " + 
			"from poly_project2.san_pham SP join poly_project2.loai_giay LG on SP.loai_giay_id = LG.id " + 
			"join poly_project2.hinh_san_pham HSP on SP.id = HSP.san_pham_id " + 
			"where LG.ten_loai =:tenLoai group by sp.ten_san_pham limit :limit",nativeQuery=true)
	List<Object[]> getListSanPhamHomePage(@Param("tenLoai") String tenLoai, @Param("limit") int limit);
	
	@Query(value="select SP.id, SP.ten_san_pham, SP.chi_tiet, SP.don_gia, SP.chiet_khau, HSP.hinh " + 
			"from poly_project2.san_pham SP join poly_project2.loai_giay LG on SP.loai_giay_id = LG.id " + 
			"join poly_project2.hinh_san_pham HSP on SP.id = HSP.san_pham_id " + 
			"where LG.ten_loai =:tenLoai group by sp.ten_san_pham",nativeQuery=true)
	List<Object[]> getListSanPhamByCategory(@Param("tenLoai") String tenLoai);
	
	@Query(value="select SP.id, SP.ten_san_pham, SP.chi_tiet, SP.don_gia, SP.chiet_khau, HSP.hinh " + 
			"from poly_project2.san_pham SP join poly_project2.hang_trong_kho HTK on SP.id = HTK.san_pham_id " + 
			"join poly_project2.hinh_san_pham HSP on SP.id = HSP.san_pham_id " + 
			"where HTK.kich_thuoc_id =:idKichThuoc group by sp.ten_san_pham",nativeQuery=true)
	List<Object[]> getListSanPhamByKichThuoc(@Param("idKichThuoc") int idKichThuoc);
	
	@Query(value="select SP.id, SP.ten_san_pham, SP.chi_tiet, SP.don_gia, SP.chiet_khau, HSP.hinh " + 
			"			from poly_project2.san_pham SP join poly_project2.loai_giay LG on SP.loai_giay_id = LG.id  " + 
			"			join poly_project2.hinh_san_pham HSP on SP.id = HSP.san_pham_id " + 
			"            where SP.ten_san_pham like %:tenSanPham% " + 
			"			group by SP.ten_san_pham",nativeQuery=true)
	List<Object[]> getListSanPhamByTenSanPham(@Param("tenSanPham")String tenSanPham);
}
