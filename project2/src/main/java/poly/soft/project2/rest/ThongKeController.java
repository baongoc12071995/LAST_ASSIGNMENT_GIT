package poly.soft.project2.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.dto.SumOfLoaiGiayInMonthDTO;
import poly.soft.project2.dto.SumOfMoneyDTO;
import poly.soft.project2.dto.Top10ProductDTO;
import poly.soft.project2.service.ThongKeService;

@RestController
@RequestMapping("/thongke")
@CrossOrigin(origins = "*")
public class ThongKeController {
	
	@Autowired
	ThongKeService thongKeService;
	
	@RequestMapping(value="/{year}")
	public ResponseEntity<?> statisticSumOfMoney(@PathVariable("year") int year){
		List<SumOfMoneyDTO> list = thongKeService.statisticSumOfMoney(year);
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	@RequestMapping(value="/top10products")
	public ResponseEntity<?> top10ProductInMonth(@Param("thang") int thang,@Param("nam") int nam ){
		List<Top10ProductDTO> list = thongKeService.list10Product(thang, nam);
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	@RequestMapping(value="/loaigiaytrongnam")
	public ResponseEntity<?> loaiGiayInYear(@Param("loaigiay") String loaigiay,@Param("nam") int nam ){
		List<SumOfMoneyDTO> list = thongKeService.statisticLoaiGiayInYear(loaigiay, nam);
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	@RequestMapping(value="/loaigiaytrongthang")
	public ResponseEntity<?> statisticsSumOfLoaiGiayInMonth(@Param("thang")int thang,@Param("nam") int nam ){
		List<SumOfLoaiGiayInMonthDTO> list = thongKeService.statisticLoaiGiayInMonth(thang, nam);
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
}
