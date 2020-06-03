package poly.soft.project2.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class AppConfig implements WebMvcConfigurer {

	@Autowired
	CommonInterceptor commonInterceptor;

	@Autowired
	AdminInterceptor adminInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		// String[] list1 = { "/sanpham/**", "/loaigiay/**", "/khachhang/**",
		// "/kichthuoc/**" };

		String[] list1 = { "/sanpham/**", "/loaigiay/**", "/kichthuoc/**" };

		String[] list2 = { "/thongke/**", "/nhanvien/**", "/hoadon/**", "/hinhsanpham/**", "/taikhoan/**" };

		registry.addInterceptor(commonInterceptor).addPathPatterns(list1);
		registry.addInterceptor(adminInterceptor).addPathPatterns(list2).excludePathPatterns("/hoadon/{id}",
				"/hoadon/create/{idKhachHang}", "/hoadon/khachhang/{id}");
	}
}
