package poly.soft.project2.dto;

public class ChiTietHoaDonDTO {
	private int id;
	private int sanPhamId;
	private int soLuong;
	private String tenKichThuoc;
	private double thanhTien;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSanPhamId() {
		return sanPhamId;
	}

	public void setSanPhamId(int sanPhamId) {
		this.sanPhamId = sanPhamId;
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
