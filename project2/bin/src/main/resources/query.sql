select hd.id, sp.ten_san_pham, cthd.so_luong, htk.don_gia, htk.chiet_khau
from poly_project2.hoa_don hd join poly_project2.chi_tiet_hoa_don cthd on hd.id = cthd.hoa_don_id
	join poly_project2.san_pham sp on sp.id = cthd.san_pham_id
    join poly_project2.hang_trong_kho htk on sp.id = htk.san_pham_id
where hd.id = 1

--Get list products for page management of product detail by type of product
select hd.id, sp.ten_san_pham, cthd.so_luong, htk.don_gia, htk.chiet_khau, hsp.hinh
from poly_project2.hoa_don hd join poly_project2.chi_tiet_hoa_don cthd on hd.id = cthd.hoa_don_id
	join poly_project2.san_pham sp on sp.id = cthd.san_pham_id
    join poly_project2.hang_trong_kho htk on sp.id = htk.san_pham_id
    join poly_project2.hinh_san_pham hsp on sp.id = hsp.san_pham_id
where hd.id = 1
group by sp.ten_san_pham

--Get list products for page index by type of product
select SP.id, SP.ten_san_pham, HTK.don_gia, HTK.chiet_khau, HSP.hinh
from poly_project2.san_pham SP join poly_project2.loai_giay LG on SP.loai_giay_id = LG.id
    join poly_project2.hang_trong_kho HTK on SP.id = HTK.san_pham_id
    join poly_project2.hinh_san_pham HSP on SP.id = HSP.san_pham_id
where LG.ten_loai = 'Adidas'
group by sp.ten_san_pham

--Select tongtien trong hoadon
select hd.id, sum(htk.don_gia*(1-htk.chiet_khau)*cthd.so_luong)
from poly_project2.san_pham sp 
join poly_project2.chi_tiet_hoa_don cthd on sp.id = cthd.san_pham_id 
join poly_project2.hang_trong_kho htk on sp.id = htk.san_pham_id 
join poly_project2.hoa_don hd on hd.id = cthd.hoa_don_id
group by hd.id 
order by hd.id;



---Statistics by month with Loai_giay
SELECT lg.ten_loai, sum(hd.tong_tien), month(hd.ngay) FROM 
poly_project2.loai_giay lg join poly_project2.san_pham sp on lg.id = sp.loai_giay_id
						   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id
                           join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id
where month(hd.ngay) =6 and year(hd.ngay)=2018
group by lg.ten_loai,month(hd.ngay)	
---Statistics by Loai_giay in year
SELECT tongTien,thang
FROM (
    SELECT sum(hd.tong_tien) as tongTien,month(hd.ngay) as thang FROM 
	poly_project2.loai_giay lg join poly_project2.san_pham sp on lg.id = sp.loai_giay_id
						   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id
                           join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id
	where lg.ten_loai = 'Adidas' and year(hd.ngay)='2018'					
	group by thang
    UNION SELECT  0 AS tongTien, 1 AS thang	
    UNION SELECT  0 AS tongTien,  2 AS thang 
    UNION SELECT  0 AS tongTien,  3 AS thang 
    UNION SELECT  0 AS tongTien,  4 AS thang 
    UNION SELECT  0 AS tongTien,  5 AS thang 
    UNION SELECT  0 AS tongTien,  6 AS thang 
    UNION SELECT  0 AS tongTien, 7 AS thang 
    UNION SELECT  0 AS tongTien,  8 AS thang 
    UNION SELECT  0 AS tongTien,  9 AS thang 
    UNION SELECT  0 AS tongTien,  10 AS thang 
    UNION SELECT  0 AS tongTien,  11 AS thang 
    UNION SELECT  0 AS tongTien,  12 AS thang 
) t 
group by thang
-----Top 10 product in month
SELECT  sp.ten_san_pham,sum(ct.thanh_tien) FROM poly_project2.san_pham sp
			   join poly_project2.chi_tiet_hoa_don ct on ct.san_pham_id = sp.id
			   join poly_project2.hoa_don hd on hd.id = ct.hoa_don_id
where month(hd.ngay)="5" and year(hd.ngay)="2018"
group by sp.ten_san_pham 
order by sum(ct.thanh_tien) desc limit 10	

---Statistics by some of money in year
SELECT thang,sum(tongTien) as tongTien
FROM (
    SELECT SUM(hd.tong_tien) AS tongTien, MONTH(hd.ngay) AS thang
    FROM poly_project2.hoa_don hd
    where year(hd.ngay) = "2017"
    GROUP by month(hd.ngay)
    UNION SELECT 0 AS tongTien, 1 AS thang
    UNION SELECT 0 AS tongTien,  2 AS thang
    UNION SELECT 0 AS tongTien,  3 AS thang
    UNION SELECT 0 AS tongTien,  4 AS thang
    UNION SELECT 0 AS tongTien,  5 AS thang
    UNION SELECT 0 AS tongTien,  6 AS thang
    UNION SELECT 0 AS tongTien, 7 AS thang
    UNION SELECT 0 AS tongTien,  8 AS thang
    UNION SELECT 0 AS tongTien,  9 AS thang
    UNION SELECT 0 AS tongTien,  10 AS thang
    UNION SELECT 0 AS tongTien,  11 AS thang
    UNION SELECT 0 AS tongTien,  12 AS thang
) t
group by thang
