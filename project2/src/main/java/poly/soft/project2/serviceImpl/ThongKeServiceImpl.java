package poly.soft.project2.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.dto.SumOfLoaiGiayInMonthDTO;
import poly.soft.project2.dto.SumOfMoneyDTO;
import poly.soft.project2.dto.Top10ProductDTO;
import poly.soft.project2.repository.HoaDonRepository;
import poly.soft.project2.service.ThongKeService;

@Service
public class ThongKeServiceImpl implements ThongKeService {

	@Autowired
	HoaDonRepository hoaDonRepository;

	@Override
	public List<SumOfMoneyDTO> statisticSumOfMoney(int year) {
		List<Object[]> list = hoaDonRepository.statisticSumOfMoney(year);
		List<SumOfMoneyDTO> list1 = new ArrayList<>();
		list.forEach(p -> {
			SumOfMoneyDTO s = new SumOfMoneyDTO();
			s.setThang(Integer.parseInt(String.valueOf(p[0])));
			s.setTongTien(Double.parseDouble(String.valueOf(p[1])));
			list1.add(s);
		});
		return list1;
	}

	@Override
	public List<Top10ProductDTO> list10Product(int month, int year) {
		List<Object[]> list = hoaDonRepository.top10productInMonth(month, year);
		List<Top10ProductDTO> list2  = new ArrayList<>();
		list.forEach(p->{
			Top10ProductDTO s = new Top10ProductDTO();
			s.setTenSanPham(String.valueOf(p[0]));
			s.setTongTien(Double.parseDouble(String.valueOf(p[1])));
			list2.add(s);
		});
		return list2;
	}

	@Override
	public List<SumOfMoneyDTO> statisticLoaiGiayInYear(String loaiGiay, int year) {
		List<Object[]> list = hoaDonRepository.statisticsLoaiGiayInYear(loaiGiay, year);
		List<SumOfMoneyDTO> list1 = new ArrayList<>();
		list.forEach(p->{
			SumOfMoneyDTO s = new SumOfMoneyDTO();
			s.setTongTien(Double.parseDouble(String.valueOf(p[0])));
			s.setThang(Integer.parseInt(String.valueOf(p[1])));
			list1.add(s);
		});
		return list1;
	}
	
	@Override
	public List<SumOfLoaiGiayInMonthDTO> statisticLoaiGiayInMonth(int month, int year) {
		List<Object[]> list = hoaDonRepository.statisticsSumOfLoaiGiayInMonth(month, year);
		List<SumOfLoaiGiayInMonthDTO> list1 = new ArrayList<>();
		list.forEach(p->{
			SumOfLoaiGiayInMonthDTO s = new SumOfLoaiGiayInMonthDTO();
			s.setTenLoai(String.valueOf(p[0]));
			s.setTongTien(Double.parseDouble(String.valueOf(p[1])));
			list1.add(s);
		});
		return list1;
	}
	

}

