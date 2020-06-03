package poly.soft.project2.service;


import java.text.ParseException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import poly.soft.project2.dto.ChiTietHoaDonDTO;
import poly.soft.project2.dto.HoaDonAdminDTO;
import poly.soft.project2.entity.HoaDon;

public interface HoaDonService {

	List<HoaDon> findAll();
	
	List<HoaDonAdminDTO> getListHoaDon() throws ParseException;
	
	HoaDon findById(int id);
	
	HoaDon save(HoaDon hoaDon);
	
	HoaDon update(HoaDon hoaDon);
	
	boolean delete(int id);

	void createHoaDon(String ghiChu, int idKhachHang, double tongTien, List<ChiTietHoaDonDTO> list);

	HoaDon changeState(int id, int idNhanVien);
	void sendMail(int hoaDonId) throws AddressException, MessagingException, ParseException;
}
