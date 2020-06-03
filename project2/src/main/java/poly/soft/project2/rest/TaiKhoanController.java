package poly.soft.project2.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.entity.TaiKhoan;
import poly.soft.project2.service.TaiKhoanService;

@RestController
@RequestMapping("/taikhoan")
public class TaiKhoanController {

	@Autowired
	TaiKhoanService taiKhoanService;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> getListTaiKhoan() {
		List<TaiKhoan> list = taiKhoanService.findAll();
		if(list.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
}
