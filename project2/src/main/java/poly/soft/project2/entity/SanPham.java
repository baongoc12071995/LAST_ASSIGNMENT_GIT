package poly.soft.project2.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import poly.soft.project2.enumeration.GioiTinhEnum;

@Entity
@Table(name = "SAN_PHAM")
@JsonIgnoreProperties({ "chiTietHoaDon" })
public class SanPham implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;

	@Column(name = "TEN_SAN_PHAM")
	private String tenSanPham;

	@Column(name = "CHI_TIET", length = 750)
	private String chiTiet;

	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<HinhSanPham> hinhSanPham;

//	@Column(name = "GIOI_TINH")
//	private GioiTinhEnum gioiTinh;

	@Column(name = "DON_GIA")
	private double donGia;

	@Column(name = "CHIET_KHAU")
	private double chietKhau;

//	@ManyToMany
//	@JoinTable(name = "KICH_THUOC_SP", joinColumns = @JoinColumn(name = "SAN_PHAM_ID"), inverseJoinColumns = @JoinColumn(name = "KICH_THUOC_ID"))
//	private List<KichThuoc> kichThuoc;

	@ManyToOne
	@JoinColumn(name = "LOAI_GIAY_ID")
	private LoaiGiay loaiGiay;

	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<HangTrongKho> hangTrongKho;

	@OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
	private List<ChiTietHoaDon> chiTietHoaDon;

	public List<HangTrongKho> getHangTrongKho() {
		return hangTrongKho;
	}

	public void setHangTrongKho(List<HangTrongKho> hangTrongKho) {
		this.hangTrongKho = hangTrongKho;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getChiTiet() {
		return chiTiet;
	}

	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}

	public List<HinhSanPham> getHinhSanPham() {
		return hinhSanPham;
	}

	public void setHinhSanPham(List<HinhSanPham> hinhSanPham) {
		this.hinhSanPham = hinhSanPham;
	}

	public LoaiGiay getLoaiGiay() {
		return loaiGiay;
	}

	public void setLoaiGiay(LoaiGiay loaiGiay) {
		this.loaiGiay = loaiGiay;
	}

	public List<ChiTietHoaDon> getChiTietHoaDon() {
		return chiTietHoaDon;
	}

	public void setChiTietHoaDon(List<ChiTietHoaDon> chiTietHoaDon) {
		this.chiTietHoaDon = chiTietHoaDon;
	}

	public double getDonGia() {
		return donGia;
	}

	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}

	public double getChietKhau() {
		return chietKhau;
	}

	public void setChietKhau(double chietKhau) {
		this.chietKhau = chietKhau;
	}
}
