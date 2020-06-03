package poly.soft.project2.rest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;

import poly.soft.project2.entity.TaiKhoan;
import poly.soft.project2.service.TaiKhoanService;

@RestController
@CrossOrigin(origins = "*")
public class LogController {
	
	@Autowired
	TaiKhoanService taiKhoanService;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ResponseEntity<?> checkLogin(@RequestHeader("username")String username, @RequestHeader("password")String password, HttpSession session) {
		TaiKhoan taikhoan = taiKhoanService.findByTenTaiKhoanAndMatKhau(username, password);
		if(taikhoan != null) {
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			System.out.println("Userlog: " + session.getAttribute("username"));
			return new ResponseEntity<TaiKhoan>(taikhoan,HttpStatus.OK);
		}
		return new ResponseEntity<String>("Fail",HttpStatus.UNAUTHORIZED);
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public ResponseEntity<?> logout(HttpSession session){
		session.removeAttribute("username");
		session.removeAttribute("password");
		return new ResponseEntity<String>("Log out!",HttpStatus.OK);
	}
}
