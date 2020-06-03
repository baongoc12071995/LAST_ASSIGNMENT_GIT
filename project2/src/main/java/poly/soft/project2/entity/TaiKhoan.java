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
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="TAI_KHOAN")
public class TaiKhoan implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="TEN_TAI_KHOAN")
	private String tenTaiKhoan;
	
	@Column(name="MAT_KHAU")
	private String matKhau;
	

	
	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name="QUYEN_TAI_KHOAN", joinColumns = @JoinColumn(name="TAI_KHOAN_ID"),
	inverseJoinColumns = @JoinColumn(name="QUYEN_ID"))
	private List<Quyen> quyen;
	
	@OneToOne
	@JoinColumn(name="NHAN_VIEN_ID")
	private NhanVien nhanVien;

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenTaiKhoan() {
		return tenTaiKhoan;
	}

	public void setTenTaiKhoan(String tenTaiKhoan) {
		this.tenTaiKhoan = tenTaiKhoan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public List<Quyen> getQuyen() {
		return quyen;
	}

	public void setQuyen(List<Quyen> quyen) {
		this.quyen = quyen;
	}



	
}
