package poly.soft.project2.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import poly.soft.project2.enumeration.GioiTinhEnum;

@Entity
@Table(name="LOAI_GIAY")
@JsonIgnoreProperties({"sanPham"})
public class LoaiGiay {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="TEN_LOAI")
	private String tenLoai;
	
	@OneToMany(mappedBy="loaiGiay",fetch= FetchType.LAZY)
	private List<SanPham> sanPham;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	
	public List<SanPham> getSanPham() {
		return sanPham;
	}
	public void setSanPham(List<SanPham> sanPham) {
		this.sanPham = sanPham;
	}
		
}
