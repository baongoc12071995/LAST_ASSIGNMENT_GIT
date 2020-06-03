package poly.soft.project2.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "KICH_THUOC")
@JsonIgnoreProperties({ "sanPham", "kichThuoc" })
public class KichThuoc {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;

	@Column(name = "TEN_KICH_THUOC")
	private String tenKichThuoc;

	@OneToMany(mappedBy = "kichThuoc")
	private List<HangTrongKho> HangTrongKho;

	public KichThuoc() {
		super();
	}

	public KichThuoc(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenKichThuoc() {
		return tenKichThuoc;
	}

	public void setTenKichThuoc(String tenKichThuoc) {
		this.tenKichThuoc = tenKichThuoc;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((tenKichThuoc == null) ? 0 : tenKichThuoc.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		KichThuoc other = (KichThuoc) obj;
		if (id != other.id)
			return false;
		if (tenKichThuoc == null) {
			if (other.tenKichThuoc != null)
				return false;
		} else if (!tenKichThuoc.equals(other.tenKichThuoc))
			return false;
		return true;
	}

	
}
