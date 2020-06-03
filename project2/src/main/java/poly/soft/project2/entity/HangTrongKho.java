package poly.soft.project2.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "HANG_TRONG_KHO", uniqueConstraints={@UniqueConstraint(columnNames = {"SAN_PHAM_ID" , "KICH_THUOC_ID"})})
@JsonInclude(value = Include.NON_NULL)
@JsonIgnoreProperties(value = { "sanPham" }, ignoreUnknown = true)
public class HangTrongKho implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;

	@ManyToOne
	@JoinColumn(name = "SAN_PHAM_ID")
	private SanPham sanPham;

//	@ManyToOne
//	@JoinColumn(name = "KHO_ID")
//	private Kho kho;

	@Column(name = "SO_LUONG")
	private int soLuong;

	@ManyToOne
	@JoinColumn(name = "KICH_THUOC_ID")
	private KichThuoc kichThuoc;

	@JsonGetter(value = "sanPhamID")
	private int getSanPhamId() {
		return sanPham.getId();
	}

//	@JsonProperty(value = "khoSanPham")
//	public Kho getKhoSP() {
//		return new Kho(kho.getId(), kho.getTenKho());
//	}

	public String getTenSanPham() {
		return sanPham.getTenSanPham();
	}

	public String getHinhSanPham() {
		if(sanPham.getHinhSanPham().isEmpty()) {
			return "No image";
		}else {
			return sanPham.getHinhSanPham().get(0).getHinh();			
		}
	}

	@Override
	public String toString() {
		return "[id=" + id + ", soLuong=" + soLuong + ", kichThuoc=" + kichThuoc
				+ "]";
	}

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

//	public Kho getKho() {
//		return kho;
//	}
//
//	public void setKho(Kho kho) {
//		this.kho = kho;
//	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public KichThuoc getKichThuoc() {
		return kichThuoc;
	}

	public void setKichThuoc(KichThuoc kichThuoc) {
		this.kichThuoc = kichThuoc;
	}

}
