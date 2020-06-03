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

import poly.soft.project2.entity.NhanVien;
import poly.soft.project2.service.NhanVienService;

@RestController
@RequestMapping("/nhanvien")
@CrossOrigin(origins = "*")
public class NhanVienController {

	@Autowired
	NhanVienService nhanvienService;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> listAllNhanVien() {
		List<NhanVien> listNhanVien = nhanvienService.findAll();
		if (listNhanVien.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);

		}
		return new ResponseEntity<>(listNhanVien, HttpStatus.OK);

	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> findNhanVienById(@PathVariable("id") int id) {
		try {
			NhanVien nhanVien = nhanvienService.findById(id);
			return new ResponseEntity<>(nhanVien, HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}
	@RequestMapping(method= RequestMethod.POST )
	public ResponseEntity<?> saveNhanVien(@RequestBody NhanVien nhanVien) {
		try {
			NhanVien nhanvien = nhanvienService.save(nhanVien); 
			return new ResponseEntity<NhanVien>(nhanvien,HttpStatus.CREATED);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
	@RequestMapping(method= RequestMethod.PUT )
	public ResponseEntity<?> updateNhanVien( @RequestBody NhanVien nhanVien) {
		try {
			NhanVien nhanvien = nhanvienService.save(nhanVien); 
			return new ResponseEntity<NhanVien>(nhanvien,HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
	
	
}
