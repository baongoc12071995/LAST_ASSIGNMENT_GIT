package poly.soft.project2.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.soft.project2.entity.HoaDon;

public interface HoaDonRepository extends JpaRepository<HoaDon, Integer>{
	
	@Query(value="select hd.id, hd.ngay, kh.ten_khach_hang, nv.ten_nhan_vien, hd.trang_thai, hd.tong_tien, hd.thanh_toan, hd.ghi_chu from poly_project2.hoa_don hd " + 
			"join poly_project2.khach_hang kh on hd.khach_hang_id = kh.id " + 
			"left outer join poly_project2.nhan_vien nv on hd.nhan_vien_id = nv.id " + 
			"order by hd.id desc", nativeQuery = true)
	public List<Object[]> getListHoaDon();
	//<=================================================>Statistics by some of money in year
	
	@Query(value="SELECT thang,tongTien " + 
			"FROM ( " + 
			"    SELECT SUM(hd.tong_tien) AS tongTien, MONTH(hd.ngay) AS thang " + 
			"    FROM poly_project2.hoa_don hd " + 
			"    where year(hd.ngay) = ?1 and hd.trang_thai = 1 " + 
			"    GROUP by month(hd.ngay) " + 
			"    UNION SELECT 0 AS tongTien, 1 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  2 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  3 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  4 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  5 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  6 AS thang " + 
			"    UNION SELECT 0 AS tongTien, 7 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  8 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  9 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  10 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  11 AS thang " + 
			"    UNION SELECT 0 AS tongTien,  12 AS thang " + 
			") t " + 
			"group by thang " + 
			"order by thang asc", nativeQuery= true)
	public List<Object[]> statisticSumOfMoney(int year);
	
	
	//<=================================================>Top 10 products in month
	@Query(value="SELECT  sp.ten_san_pham,sum(ct.thanh_tien) FROM poly_project2.san_pham sp" + 
			"			   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id" + 
			"			   join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id " + 
			"where month(hd.ngay)=?1 and year(hd.ngay)=?2 and hd.trang_thai = 1 " + 
			"group by sp.ten_san_pham " + 
			"order by sum(ct.thanh_tien) desc limit 10	",nativeQuery= true)
	public List<Object[]> top10productInMonth(int month,int year);
	
	//<=================================================>Loai giay trong nam
	@Query(value="SELECT tongTien,thang " + 
			"FROM (" + 
			"    SELECT sum(ct.thanh_tien) as tongTien,month(hd.ngay) as thang FROM " + 
			"	poly_project2.loai_giay lg join poly_project2.san_pham sp on lg.id = sp.loai_giay_id  " + 
			"						   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id " + 
			"                           join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id " + 
			"	where lg.ten_loai = ?1 and year(hd.ngay)=?2	and hd.trang_thai = 1 " + 
			"	group by thang " + 
			"    UNION SELECT  0 AS tongTien, 1 AS thang	" + 
			"    UNION SELECT  0 AS tongTien,  2 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  3 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  4 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  5 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  6 AS thang " + 
			"    UNION SELECT  0 AS tongTien, 7 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  8 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  9 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  10 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  11 AS thang " + 
			"    UNION SELECT  0 AS tongTien,  12 AS thang " + 
			") t " + 
			" group by thang order by thang asc",nativeQuery=true)
	public List<Object[]> statisticsLoaiGiayInYear(String loaiGiay,int year);
	//<=================================================>Sum of LoaiGiay in Month
	@Query(value="SELECT lg.ten_loai, sum(ct.thanh_tien) FROM " + 
			"poly_project2.loai_giay lg join poly_project2.san_pham sp on lg.id = sp.loai_giay_id " + 
			"						   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id " + 
			"                           join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id " + 
			"where month(hd.ngay) =?1 and year(hd.ngay)=?2 and hd.trang_thai = 1 " + 
			"group by lg.ten_loai,month(hd.ngay)	",nativeQuery=true)
	public List<Object[]> statisticsSumOfLoaiGiayInMonth(int month,int year);
	
	
}
