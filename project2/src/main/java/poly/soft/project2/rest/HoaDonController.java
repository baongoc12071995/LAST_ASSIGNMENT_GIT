package poly.soft.project2.rest;

import java.text.ParseException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.dto.HoaDonAdminDTO;
import poly.soft.project2.dto.HoaDonDTO;
import poly.soft.project2.entity.HoaDon;
import poly.soft.project2.entity.KhachHang;
import poly.soft.project2.entity.NhanVien;
import poly.soft.project2.service.HoaDonService;
import poly.soft.project2.service.KhachHangService;

@RestController
@RequestMapping("/hoadon")
@CrossOrigin(origins = { "*" })
public class HoaDonController {

	@Autowired
	HoaDonService hoaDonService;

	@Autowired
	KhachHangService khachHangService;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> getListHoaDon() throws ParseException {
		List<HoaDonAdminDTO> list = hoaDonService.getListHoaDon();
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getSanPhamById(@PathVariable("id") int id) {
		HoaDon hd = hoaDonService.findById(id);
		if (hd == null) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<HoaDon>(hd, HttpStatus.OK);
	}

	@RequestMapping(value = "/create/{idKhachHang}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> saveHoaDon(@PathVariable("idKhachHang") int idKhachHang, @RequestBody HoaDonDTO hd) {
		hoaDonService.createHoaDon(hd.getGhiChu(), idKhachHang, hd.getTongTien(), hd.getListCTHD());
		return new ResponseEntity<String>("Thêm hóa đơn thành công!", HttpStatus.OK);
	}

	@RequestMapping(value = "/khachhang/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getHoaDonByKhachHangId(@PathVariable("id") int id) {
		KhachHang kh = khachHangService.findById(id);
		List<HoaDon> list = kh.getHoaDon();
		if (list.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteHoaDon(@PathVariable("id") int id) {
		if (hoaDonService.delete(id)) {
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@RequestMapping(value = "/chuyentrangthai/{id}/{idNhanVien}", method = RequestMethod.PUT)
	public ResponseEntity<?> changeState(@PathVariable("id") int id, @PathVariable("idNhanVien") int idNhanVien) {
		HoaDon hd = hoaDonService.changeState(id, idNhanVien);
		return new ResponseEntity<>(hd, HttpStatus.OK);
	}
	
	@RequestMapping(value="/sendmail/{id}",method= RequestMethod.GET)
	public ResponseEntity<?> sendMail(@PathVariable("id") int id) throws AddressException, MessagingException, ParseException{
		hoaDonService.sendMail(id);
		return  new ResponseEntity<>(HttpStatus.OK);
	}
	

}
