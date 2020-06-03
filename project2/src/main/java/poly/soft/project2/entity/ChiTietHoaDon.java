package poly.soft.project2.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "CHI_TIET_HOA_DON")
@JsonIgnoreProperties({ "hoaDon" })
public class ChiTietHoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;

	@ManyToOne
	@JoinColumn(name = "SAN_PHAM_ID")
	private SanPham sanPham;

	@ManyToOne
	@JoinColumn(name = "HOA_DON_ID")
	private HoaDon hoaDon;

	@Column(name = "SO_LUONG")
	private int soLuong;

	@Column(name = "TEN_KICH_THUOC")
	private String tenKichThuoc;

	@Column(name = "THANH_TIEN")
	private double thanhTien;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public HoaDon getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getTenKichThuoc() {
		return tenKichThuoc;
	}

	public void setTenKichThuoc(String tenKichThuoc) {
		this.tenKichThuoc = tenKichThuoc;
	}

	public double getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(double thanhTien) {
		this.thanhTien = thanhTien;
	}

}
