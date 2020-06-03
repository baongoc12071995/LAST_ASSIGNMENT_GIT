package poly.soft.project2.rest;

import java.util.List;

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

import poly.soft.project2.entity.KichThuoc;
import poly.soft.project2.service.KichThuocService;

@RestController
@RequestMapping("/kichthuoc")
@CrossOrigin(origins = "*")
public class KichThuocController {

	@Autowired
	KichThuocService kichThuocService;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> listKichThuoc() {
		List<KichThuoc> listKichThuoc = kichThuocService.findAll();
		if (listKichThuoc.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);

		}
		return new ResponseEntity<>(listKichThuoc, HttpStatus.OK);

	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> findKichThuocById(@PathVariable("id") int id) {
		try {
			KichThuoc kichthuoc = kichThuocService.findById(id);
			return new ResponseEntity<>(kichthuoc, HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}
	@RequestMapping(method= RequestMethod.POST, 
			produces=MediaType.APPLICATION_JSON_UTF8_VALUE, 
			consumes=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> saveKichThuoc(@RequestBody KichThuoc kichThuoc) {
		try {
			KichThuoc kichthuoc = kichThuocService.save(kichThuoc); 
			return new ResponseEntity<KichThuoc>(kichthuoc,HttpStatus.CREATED);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
	@RequestMapping(method= RequestMethod.PUT )
	public ResponseEntity<?> updateKichThuoc( @RequestBody KichThuoc kichThuoc) {
		try {
			KichThuoc kichthuoc = kichThuocService.save(kichThuoc); 
			return new ResponseEntity<KichThuoc>(kichthuoc,HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
}
