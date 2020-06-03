package poly.soft.project2.serviceImpl;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.soft.project2.dto.ChiTietHoaDonDTO;
import poly.soft.project2.dto.HoaDonAdminDTO;
import poly.soft.project2.entity.ChiTietHoaDon;
import poly.soft.project2.entity.HangTrongKho;
import poly.soft.project2.entity.HoaDon;
import poly.soft.project2.entity.KhachHang;
import poly.soft.project2.entity.KichThuoc;
import poly.soft.project2.entity.SanPham;
import poly.soft.project2.enumeration.HDTrangThaiEnum;
import poly.soft.project2.enumeration.ThanhToanEnum;
import poly.soft.project2.repository.ChiTietHoaDonRepository;
import poly.soft.project2.repository.HangTrongKhoRepository;
import poly.soft.project2.repository.HoaDonRepository;
import poly.soft.project2.repository.KhachHangRepository;
import poly.soft.project2.repository.KichThuocRepository;
import poly.soft.project2.repository.NhanVienRepository;
import poly.soft.project2.repository.SanPhamRepository;
import poly.soft.project2.service.HoaDonService;

@Service
@Transactional
public class HoaDonServiceImpl implements HoaDonService {

	private SimpleDateFormat timeformat = new SimpleDateFormat("dd/MM/yyyy");

	@Autowired
	HoaDonRepository hoaDonRepository;
	
	@Autowired
	KhachHangRepository khachHangRepository;
	
	@Autowired
	SanPhamRepository sanPhamRepository;
	
	@Autowired
	ChiTietHoaDonRepository chiTietHoaDonRepository;

	@Autowired
	HangTrongKhoRepository hangTrongKhoRepository;
	
	@Autowired
	KichThuocRepository kichThuocRepository;
	
	@Autowired
	NhanVienRepository nhanVienRepository;
	
	@Override
	public List<HoaDon> findAll() {
		return hoaDonRepository.findAll();
	}

	@Override
	public List<HoaDonAdminDTO> getListHoaDon() throws ParseException {
		List<Object[]> list = hoaDonRepository.getListHoaDon();
		List<HoaDonAdminDTO> listHDAdmin = new ArrayList<>();
		for (Object[] arr : list) {
			HoaDonAdminDTO hd = new HoaDonAdminDTO();
			hd.setId(Integer.parseInt(String.valueOf(arr[0])));
			hd.setNgay(timeformat.format(new Date(Timestamp.valueOf(String.valueOf(arr[1])).getTime())));
			hd.setTenKhachHang(String.valueOf(arr[2]));
			hd.setTenNhanVien(String.valueOf(arr[3]));
			HDTrangThaiEnum[] enums = HDTrangThaiEnum.values();
			int code = Integer.parseInt(String.valueOf(arr[4]));
			for (HDTrangThaiEnum en : enums) {
				if (en.getCode() == code) {
					hd.setTrangThai(en.getState());
					break;
				}
			}
			hd.setTongTien(Double.parseDouble(String.valueOf(arr[5])));
			int codeTT = Integer.parseInt(String.valueOf(arr[6]));
			ThanhToanEnum[] enumsTT = ThanhToanEnum.values();
			for (ThanhToanEnum en : enumsTT) {
				if (en.getCode() == codeTT) {
					hd.setThanhToan(en.getType());
					break;
				}
			}
			hd.setGhiChu(String.valueOf(arr[7]));
			listHDAdmin.add(hd);
		}
		return listHDAdmin;
	}

	@Override
	public HoaDon findById(int id) {
		Optional<HoaDon> hoaDon = hoaDonRepository.findById(id);
		return hoaDon.orElse(null);
	}

	@Override
	public HoaDon save(HoaDon hoaDon) {
		HoaDon hd = hoaDonRepository.save(hoaDon);
		return hd;
	}

	@Override
	public boolean delete(int id) {
		HoaDon hd = findById(id);
		if (hd == null || hd.getTrangThai().getState().equalsIgnoreCase("Hoàn thành")) {
			return false;
		} else {	
			List<ChiTietHoaDon> listCTHD = hd.getChiTietHoaDon();
			listCTHD.forEach(p -> {
				KichThuoc kt = kichThuocRepository.findByTenKichThuoc(p.getTenKichThuoc());
				HangTrongKho htk = hangTrongKhoRepository.findBySanPhamAndKichThuoc(p.getSanPham(), kt);
				if(htk == null) {
					HangTrongKho htkNew = new HangTrongKho();
					htkNew.setKichThuoc(kichThuocRepository.findByTenKichThuoc(p.getTenKichThuoc()));
					htkNew.setSanPham(sanPhamRepository.getOne(p.getSanPham().getId()));
					htkNew.setSoLuong(p.getSoLuong());
					hangTrongKhoRepository.save(htkNew);
				}else {
					htk.setSoLuong(htk.getSoLuong() + p.getSoLuong());					
					hangTrongKhoRepository.save(htk);
				}
				chiTietHoaDonRepository.deleteById(p.getId());
			});
			hoaDonRepository.deleteById(id);
			return true;
		}
	}

	@Override
	public HoaDon update(HoaDon hoaDon) {

		return null;
	}
	
	@Override
	public void createHoaDon(String ghiChu, int idKhachHang, double tongTien, List<ChiTietHoaDonDTO> list) {
		HoaDon hoaDon = new HoaDon();
		Date date = new Date();
		hoaDon.setNgay(date);
		hoaDon.setThanhToan(ThanhToanEnum.TIỀN_MẶT);
		hoaDon.setTrangThai(HDTrangThaiEnum.IN_PROGRESS);
		hoaDon.setGhiChu(ghiChu);
		hoaDon.setKhachHang(khachHangRepository.findById(idKhachHang).orElse(null));
		hoaDon.setTongTien(tongTien);
		hoaDon.setNhanVien(nhanVienRepository.findById(1).orElse(null));
		HoaDon hd = hoaDonRepository.save(hoaDon);
		
		list.forEach(p -> {
			ChiTietHoaDon cthd = new ChiTietHoaDon();
			SanPham sp = sanPhamRepository.findById(p.getSanPhamId()).orElse(null);
			KichThuoc kt = kichThuocRepository.findByTenKichThuoc(p.getTenKichThuoc());
			cthd.setSanPham(sp);
			cthd.setSoLuong(p.getSoLuong());
			cthd.setTenKichThuoc(p.getTenKichThuoc());
			cthd.setThanhTien(p.getThanhTien());
			cthd.setHoaDon(hd);
			chiTietHoaDonRepository.save(cthd);
			
			HangTrongKho htk = hangTrongKhoRepository.findBySanPhamAndKichThuoc(sp, kt);
			if(htk.getSoLuong() > p.getSoLuong()) {
				htk.setSoLuong(htk.getSoLuong() - p.getSoLuong());
				hangTrongKhoRepository.save(htk);
			}else if(htk.getSoLuong() == p.getSoLuong()) {
				hangTrongKhoRepository.delete(htk);
			}
		});
	}

	@Override
	public HoaDon changeState(int id, int idNhanVien) {
		HoaDon hd = hoaDonRepository.findById(id).orElse(null);
		if(hd != null) {
			hd.setTrangThai(HDTrangThaiEnum.DONE);
			hd.setNgay(new Date());
			hd.setNhanVien(nhanVienRepository.findById(idNhanVien).orElse(null));
		}
		return hd;
	}

	@Override
	public void sendMail(int hoaDonId) throws AddressException, MessagingException {
		String email="";
		Properties mailServerProperties;
		Session getMailSession;
		MimeMessage mailMessage;
		String  today = new SimpleDateFormat("dd/MM/yyyy").format(new Date());
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_YEAR, 4);
		Date moreDay = calendar.getTime();
		String formatDay = new SimpleDateFormat("dd/MM/yyyy").format(moreDay);
		// Step1: setup Mail Server
		mailServerProperties = System.getProperties();
		mailServerProperties.put("mail.smtp.port", "587");
		mailServerProperties.put("mail.smtp.auth", "true");
		mailServerProperties.put("mail.smtp.starttls.enable", "true");
		
		// Step2: get Mail Session
		getMailSession = Session.getDefaultInstance(mailServerProperties, null);
		mailMessage = new MimeMessage(getMailSession);
		
		// thay abc@gmail.com báº±ng Ä‘á»‹a chá»‰ ngÆ°á»�i nháº­n
		HoaDon hd =  hoaDonRepository.findById(hoaDonId).orElse(null);
		KhachHang kh = hd.getKhachHang();
		if (hd!=null) {
			 email = hd.getKhachHang().getEmail();
		}
		mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); 
		
		// Báº¡n cÃ³ thá»ƒ chá»�n CC, BCC
		// generateMailMessage.addRecipient(Message.RecipientType.CC, new
		// InternetAddress("cc@gmail.com")); //Ä�á»‹a chá»‰ cc gmail
		
		mailMessage.setSubject("Hóa đơn của quý khách từ cửa hàng ShoesShop");
		List<ChiTietHoaDon> list = hd.getChiTietHoaDon();
		String chiTiet="";
		for(int i=0;i<list.size();i++) {
			double dongia = list.get(i).getSanPham().getDonGia()*(1-list.get(i).getSanPham().getChietKhau());
			chiTiet+="<tr>\r\n" + 
			"<td>"+list.get(i).getSanPham().getTenSanPham()+"</td>\r\n" + 
			"<td>"+Math.round(dongia)+"</td>\r\n" + 
			"<td>"+list.get(i).getSoLuong()+"</td>\r\n" + 
			"<td>"+Math.round(list.get(i).getThanhTien())+"</td>\r\n" + 
			"</tr>\r\n"; 
		}
		
		String header = "<!DOCTYPE html>\r\n" + 
				"<html lang=\"en\">\r\n" + 
				"\r\n" + 
				"<head>\r\n" + 
				"    <meta charset=\"UTF-8\">\r\n" + 
				"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n" + 
				"    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n" + 
				"    <title>Thông tin hóa đơn</title>\r\n" + 
				"</head>\r\n";
		String body="<body style=\"width: 100%; height: 100%; background-color: #F4F4F4\">\r\n" + 
				"\r\n" + 
				"    <h1 style=\"font-family: 'segoe-ui light'; font-size: 16px; color: #000; text-align: center\">Thông tin hóa đơn của bạn</h1>\r\n" + 
				"    <p style=\"font-family: 'segoe-ui light'; font-size: 14px; color: #000; text-align: center\">Chúng tôi vừa bàn giao đơn hàng của quý khách đến đối tác vận chuyển ShoesShop. Đơn hàng của quý khách sẽ được xét duyệt trong\r\n" + 
				"        ngày "+today+"</p>\r\n" + 
				"    <div style=\"float: left; width: 30%; margin-right: 4%; margin-bottom: 20px;\">\r\n" + 
				"        <h2 style=\"font-family: 'segoe-ui light'; font-size: 14px; color: #000\">Địa chỉ người nhận</h2>\r\n" + 
				"        <div style=\"background-color: #fff; box-sizing: border-box; padding: 10px; border-radius: 5px;  height: 150px;\">\r\n" + 
				"            <strong>"+kh.getTenKhachHang()+"</strong>\r\n" + 
				"            <p>Địa chỉ: "+kh.getDiaChi()+"</p>\r\n" + 
				"            <p>Điện thoại: "+kh.getSoDienThoai()+"</p>\r\n" + 
				"        </div>\r\n" + 
				"    </div>\r\n" + 
				"\r\n" + 
				"    <div style=\"float: left; width: 30%; margin-right: 4%;margin-bottom: 20px;\">\r\n" + 
				"        <h2 style=\"font-family: 'segoe-ui light'; font-size: 14px; color: #000\">Hình thức giao hàng</h2>\r\n" + 
				"        <div style=\"background-color: #fff; box-sizing: border-box; padding: 10px; border-radius: 5px;  height: 150px;\">\r\n" + 
				"            <p>Vận chuyển Tiết Kiệm (dự kiến giao hàng vào "+formatDay+")</p>\r\n" + 
				"            <strong style=\"font-size: 20px; color: red;\">Tổng cộng: "+Math.round(hd.getTongTien()) +"</strong>\r\n" + 
				"        </div>\r\n" + 
				"    </div>\r\n" + 
				"\r\n" + 
				"    <div style=\"float: left; width: 30%; margin-bottom: 20px;\">\r\n" + 
				"        <h2 style=\"font-family: 'segoe-ui light'; font-size: 14px; color: #000\">Hình thức thanh toán</h2>\r\n" + 
				"        <div style=\"background-color: #fff; box-sizing: border-box; padding: 10px; border-radius: 5px;  height: 150px;\">\r\n" + 
				"            <p>Thanh toán sau khi nhận hàng.</p>\r\n" + 
				"        </div>\r\n" + 
				"    </div>\r\n" + 
				"\r\n" + 
				"    <div style=\"clear: both; background-color: #fff; width: 100%\">\r\n" + 
				"        <table style=\"width: 100%;\">\r\n" + 
				"            <thead style=\"text-align: center\">\r\n" + 
				"                <tr>\r\n" + 
				"                    <th>Sản phẩm</th>\r\n" + 
				"                    <th>Giá</th>\r\n" + 
				"                    <th>Số lượng</th>\r\n" + 
				"                    <th>Thành tiền</th>\r\n" + 
				"                </tr>\r\n" + 
				"            </thead>\r\n" + 
				"            <tbody style=\"text-align: center\">\r\n" +
				chiTiet+
				"            </tbody>\r\n" + 
				"        </table>\r\n" + 
				"    </div>\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"</body>\r\n" + 
				"\r\n" + 
				"</html>";
		String emailBody = header + body;
		
		mailMessage.setContent(emailBody, "text/html; charset=UTF-8");
		
		// Step3: Send mail
		Transport transport = getMailSession.getTransport("smtp");
		
		// Thay your_gmail thÃ nh gmail cá»§a báº¡n, thay your_password
		// thÃ nh máº­t kháº©u gmail cá»§a báº¡n
		transport.connect("smtp.gmail.com", "conque8@gmail.com", "1900585810");
		transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
		transport.close();
		
	}
	

}
