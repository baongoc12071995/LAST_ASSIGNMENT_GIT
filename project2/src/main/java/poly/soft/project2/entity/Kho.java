package poly.soft.project2.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

//@Entity
//@Table(name="KHO")
//@JsonInclude(value=Include.NON_NULL)
public class Kho implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="TEN_KHO")
	private String tenKho;
	
	@Column(name="DIA_CHI")
	private String diaChi;
	
	@OneToMany(mappedBy="kho",fetch = FetchType.LAZY)
	private List<HangTrongKho> hangTrongKho;
	
	public List<HangTrongKho> getHangTrongKho() {
		return hangTrongKho;
	}

	public void setHangTrongKho(List<HangTrongKho> hangTrongKho) {
		this.hangTrongKho = hangTrongKho;
	}
	
	public Kho() {
		super();
	}

	public Kho(int id, String tenKho) {
		this.id = id;
		this.tenKho = tenKho;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenKho() {
		return tenKho;
	}

	public void setTenKho(String tenKho) {
		this.tenKho = tenKho;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	
}
