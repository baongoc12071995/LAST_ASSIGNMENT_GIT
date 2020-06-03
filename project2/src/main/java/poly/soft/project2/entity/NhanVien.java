package poly.soft.project2.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import poly.soft.project2.enumeration.GioiTinhEnum;

@Entity
@Table(name="NHAN_VIEN")
public class NhanVien implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="TEN_NHAN_VIEN")
	private String tenNhanVien;
	
	@Column(name="GIOI_TINH")
	private GioiTinhEnum gioiTinh;

	@Column(name="NGAY_SINH")
	private Date ngaySinh;
	
	@Column(name="DIA_CHI")
	private String diaChi;
	
	@Column(name="SO_DIEN_THOAI")
	private String soDienThoai;
	
	@Column(name="EMAIL")
	private String email;
	
	@JsonIgnore
	@OneToMany(mappedBy="nhanVien",fetch = FetchType.LAZY)
	private List<HoaDon> hoaDon;
	
	@JsonIgnore
	@OneToOne(mappedBy="nhanVien", fetch=FetchType.LAZY)
	private TaiKhoan taiKhoan;

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenNhanVien() {
		return tenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}
	
	public GioiTinhEnum getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(GioiTinhEnum gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(List<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}
	
}
