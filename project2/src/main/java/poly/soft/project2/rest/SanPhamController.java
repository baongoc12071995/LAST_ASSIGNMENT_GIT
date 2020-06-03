package poly.soft.project2.rest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import poly.soft.project2.dto.KTSoLuongDTO;
import poly.soft.project2.dto.SanPhamAdminDTO;
import poly.soft.project2.dto.SanPhamHomePageDTO;
import poly.soft.project2.entity.HangTrongKho;
import poly.soft.project2.entity.HinhSanPham;
import poly.soft.project2.entity.SanPham;
import poly.soft.project2.repository.HinhSanPhamRepository;
import poly.soft.project2.service.HangTrongKhoService;
import poly.soft.project2.service.KichThuocService;
import poly.soft.project2.service.SanPhamService;

@RestController
@RequestMapping("/sanpham")
@CrossOrigin(origins = "*")
public class SanPhamController {

	@Autowired
	SanPhamService sanPhamService;
	@Autowired
	HangTrongKhoService hangTrongKhoService;
	@Autowired
	KichThuocService kichThuocService;
	@Autowired
	HinhSanPhamRepository hinhSanPhamRepository;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> getListSanPham() {
		List<SanPham> list = sanPhamService.findAll();
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	// Get products for homepage
	@RequestMapping(value = "/homepage/{tenLoai}", method = RequestMethod.GET)
	public ResponseEntity<?> getListSanPhamHomePage(@PathVariable("tenLoai") String tenLoai) {
		List<SanPhamHomePageDTO> list = sanPhamService.getListSanPhamHomePage(tenLoai, 3);
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	// Get products by category
	@RequestMapping(value = "/name/{tenLoai}", method = RequestMethod.GET)
	public ResponseEntity<?> getListSanPhamByCategory(@PathVariable("tenLoai") String tenLoai) {
		List<SanPhamHomePageDTO> list = sanPhamService.getListSanPhamByCategory(tenLoai);
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getSanPhamById(@PathVariable("id") int id) {
		SanPham sp = sanPhamService.findById(id);
		if (sp == null) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<SanPham>(sp, HttpStatus.OK);
	}

	@RequestMapping(value = "/kichthuoc/{idKichThuoc}", method = RequestMethod.GET)
	public ResponseEntity<?> getSanPhamByKichThuoc(@PathVariable("idKichThuoc") int idKichThuoc) {
		List<SanPhamHomePageDTO> list = sanPhamService.getListSanPhamByKichThuoc(idKichThuoc);
		if (list.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@RequestMapping(value = "/themhinh/{id}", method = RequestMethod.PUT)
	public ResponseEntity<?> addHinhSanPham(@PathVariable("id") int id, @RequestParam("hinh") String hinh) {
		SanPham sp = sanPhamService.findById(id);
		if (sp == null) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		} else {
			HinhSanPham hsp = new HinhSanPham();
			hsp.setHinh(hinh);
			hsp.setSanPham(sp);
			hinhSanPhamRepository.save(hsp);
			sp = sanPhamService.findById(id);
			return new ResponseEntity<SanPham>(sp, HttpStatus.OK);
		}
	}

	@RequestMapping(value = "/hangtrongkho/{id}", method = RequestMethod.PUT)
	public ResponseEntity<?> addSoLuongByKichThuoc(@PathVariable("id") int id,
			@RequestBody ArrayList<KTSoLuongDTO> list) {
		SanPham sanPham = sanPhamService.findById(id);
		List<HangTrongKho> listHTK = sanPham.getHangTrongKho();
		List<HangTrongKho> listNew = new ArrayList<>();
		List<KTSoLuongDTO> listData = new ArrayList<>();

		list.forEach(p -> {
			listHTK.forEach(q -> {
				if (q.getKichThuoc().getId() == p.getKichThuocId()) {
					HangTrongKho htk = hangTrongKhoService.findById(q.getId());
					htk.setSoLuong(p.getSoLuong());
					hangTrongKhoService.save(htk);
					listNew.add(htk);
				}
			});
		});

		List<HangTrongKho> listHTK1 = sanPham.getHangTrongKho();
		System.out.println("0:listHTK1" + listHTK1);
		listHTK1.removeAll(listNew);

		for (int i = 0; i < listHTK1.size(); i++) {
			hangTrongKhoService.delete(listHTK1.get(i).getId());
		}

		listNew.forEach(p -> {
			if (p.getKichThuoc() != null) {
				listData.add(new KTSoLuongDTO(p.getKichThuoc().getId(), p.getSoLuong()));
			}
		});

		list.removeAll(listData);
		System.out.println("aaa:" + listData);
		System.out.println(list);
		list.forEach(p -> {
			HangTrongKho htk = new HangTrongKho();
			htk.setSanPham(sanPham);
			htk.setKichThuoc(kichThuocService.findById(p.getKichThuocId()));
			htk.setSoLuong(p.getSoLuong());
			hangTrongKhoService.save(htk);
		});
		return new ResponseEntity<>(HttpStatus.OK);
	}

	// Get product by Name
	@RequestMapping(value = "/timsanpham", method = RequestMethod.GET)
	public ResponseEntity<?> getListSanPhamByName(@Param("tensanpham") String tensanpham) {
		List<SanPhamHomePageDTO> list = sanPhamService.getListSanPhamByTenSanPham(tensanpham);
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	// Save Product in admin page
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> saveSanPham(@RequestBody SanPhamAdminDTO sp) {
		SanPham newSP = sanPhamService.saveSanPham(sp);
		return new ResponseEntity<>(newSP, HttpStatus.OK);
	}

	// Update Product in admin page
	@RequestMapping(method = RequestMethod.PUT)
	public ResponseEntity<?> updateSanPham(@RequestBody SanPhamAdminDTO sp) {
		SanPham newSP = sanPhamService.updateSanPham(sp);
		return new ResponseEntity<>(newSP, HttpStatus.OK);
	}

}
