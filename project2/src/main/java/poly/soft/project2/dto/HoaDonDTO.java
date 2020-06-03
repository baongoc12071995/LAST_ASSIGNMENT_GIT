package poly.soft.project2.dto;

import java.util.List;

public class HoaDonDTO {
	
	private String ghiChu;
	private double tongTien;
	private List<ChiTietHoaDonDTO> listCTHD;
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public List<ChiTietHoaDonDTO> getListCTHD() {
		return listCTHD;
	}
	public void setListCTHD(List<ChiTietHoaDonDTO> listCTHD) {
		this.listCTHD = listCTHD;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	
	
}
