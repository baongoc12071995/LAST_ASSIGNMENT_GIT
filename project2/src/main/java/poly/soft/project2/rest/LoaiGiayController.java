package poly.soft.project2.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.entity.KhachHang;
import poly.soft.project2.entity.LoaiGiay;
import poly.soft.project2.entity.NhanVien;
import poly.soft.project2.service.LoaiGiayService;

@RestController
@RequestMapping("/loaigiay")
@CrossOrigin(origins = "*")
public class LoaiGiayController {
	
	@Autowired
	LoaiGiayService loaiGiayService;

	@RequestMapping(method=RequestMethod.GET)
	public ResponseEntity<?> getListLoaiGiay(){
		return new ResponseEntity<List<LoaiGiay>>(loaiGiayService.getLoaiGiay(), HttpStatus.OK);
	}
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> findLoaiGiayById(@PathVariable("id") int id) {
		try {
			LoaiGiay loaigiay = loaiGiayService.findById(id);
			return new ResponseEntity<>(loaigiay, HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}
	@RequestMapping(method= RequestMethod.POST )
	public ResponseEntity<?> saveLoaiGiay(@RequestBody LoaiGiay loaiGiay) {
		try {
			LoaiGiay loaigiay = loaiGiayService.save(loaiGiay); 
			return new ResponseEntity<LoaiGiay>(loaigiay,HttpStatus.CREATED);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
	@RequestMapping(method = RequestMethod.PUT)
	public ResponseEntity<?> updateLoaiGiay(@RequestBody LoaiGiay loaiGiay) {
		try {
			LoaiGiay loaigiay = loaiGiayService.save(loaiGiay);
			return new ResponseEntity<LoaiGiay>(loaigiay, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

	}

}
