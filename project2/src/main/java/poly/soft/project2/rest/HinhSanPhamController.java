package poly.soft.project2.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.service.HinhSanPhamService;

@RestController
@RequestMapping("/hinhsanpham")
@CrossOrigin(origins = { "*" })
public class HinhSanPhamController {

	@Autowired
	HinhSanPhamService hinhSanPhamService;

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteHinhSP(@PathVariable("id") int id) {
		try {
			hinhSanPhamService.delete(id);
			return new ResponseEntity<>("Success", HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
