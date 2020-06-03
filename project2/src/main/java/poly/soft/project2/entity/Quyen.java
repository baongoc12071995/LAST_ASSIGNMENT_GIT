package poly.soft.project2.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="QUYEN")
@JsonIgnoreProperties(value= {"taiKhoan"})
public class Quyen {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="TEN_QUYEN")
	private String tenQuyen;
	
	@ManyToMany(mappedBy="quyen", fetch=FetchType.LAZY)
	private List<TaiKhoan> taiKhoan;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenQuyen() {
		return tenQuyen;
	}

	public void setTenQuyen(String tenQuyen) {
		this.tenQuyen = tenQuyen;
	}

	public List<TaiKhoan> getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(List<TaiKhoan> taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	
}
