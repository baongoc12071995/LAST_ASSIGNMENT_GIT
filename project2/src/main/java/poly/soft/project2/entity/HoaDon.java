package poly.soft.project2.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

import poly.soft.project2.enumeration.HDTrangThaiEnum;
import poly.soft.project2.enumeration.ThanhToanEnum;

@Entity
@Table(name = "HOA_DON")
public class HoaDon implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	@Column(name = "NGAY")
	private Date ngay;

	@Column(name = "TONG_TIEN")
	private double tongTien;

	@Column(name = "TRANG_THAI")
	private HDTrangThaiEnum trangThai;

	@Column(name = "THANH_TOAN")
	private ThanhToanEnum thanhToan;

	@Column(name = "GHI_CHU", length = 800)
	private String ghiChu;

	@OneToMany(mappedBy = "hoaDon", fetch = FetchType.LAZY)
	private List<ChiTietHoaDon> chiTietHoaDon;

	@ManyToOne
	@JoinColumn(name = "NHAN_VIEN_ID")
	private NhanVien nhanVien;

	@ManyToOne
	@JoinColumn(name = "KHACH_HANG_ID")
	private KhachHang khachHang;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgay() {
		return ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public List<ChiTietHoaDon> getChiTietHoaDon() {
		return chiTietHoaDon;
	}

	public void setChiTietHoaDon(List<ChiTietHoaDon> chiTietHoaDon) {
		this.chiTietHoaDon = chiTietHoaDon;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public HDTrangThaiEnum getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(HDTrangThaiEnum trangThai) {
		this.trangThai = trangThai;
	}

	public ThanhToanEnum getThanhToan() {
		return thanhToan;
	}

	public void setThanhToan(ThanhToanEnum thanhToan) {
		this.thanhToan = thanhToan;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

}
