package poly.soft.project2.dto;

import java.io.Serializable;

import poly.soft.project2.enumeration.GioiTinhEnum;

public class SanPhamHomePageDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String tenSanPham;
	private String chiTiet;
	private double donGia;
	private double chietKhau;
	private String hinh;
	private GioiTinhEnum gioiTinh;
	
	public SanPhamHomePageDTO() {
		super();
	}
	public SanPhamHomePageDTO(int id, String tenSanPham, String chiTiet, double donGia, double chietKhau, String hinh) {
		super();
		this.id = id;
		this.tenSanPham = tenSanPham;
		this.chiTiet = chiTiet;
		this.donGia = donGia;
		this.chietKhau = chietKhau;
		this.hinh = hinh;
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
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getChiTiet() {
		return chiTiet;
	}
	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}
	public GioiTinhEnum getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(GioiTinhEnum gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	
	
}
