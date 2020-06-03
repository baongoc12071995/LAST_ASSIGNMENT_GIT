package poly.soft.project2.dto;

public class SanPhamAdminDTO {

	private int id;
	private String tenSanPham;
	private int loaiGiayId;
	private double donGia;
	private double chietKhau;
	private String chiTiet;
	
	
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
	
	public int getLoaiGiayId() {
		return loaiGiayId;
	}
	public void setLoaiGiayId(int loaiGiayId) {
		this.loaiGiayId = loaiGiayId;
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
	public String getChiTiet() {
		return chiTiet;
	}
	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}
	
	
}
