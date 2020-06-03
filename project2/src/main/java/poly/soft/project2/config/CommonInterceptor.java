package poly.soft.project2.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import poly.soft.project2.entity.TaiKhoan;
import poly.soft.project2.service.TaiKhoanService;

@Component
public class CommonInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	TaiKhoanService taiKhoanService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if ("GET".equals(request.getMethod())) {
			return true;
		}
		if ("PUT".equals(request.getMethod()) || "POST".equals(request.getMethod())
				|| "DELETE".equals(request.getMethod())) {
			String tenTaiKhoan = request.getParameter("username");
			String matKhau = request.getParameter("password");

			HttpSession session = request.getSession();
			if (String.valueOf(session.getAttribute("username")).equals(tenTaiKhoan)
					&& String.valueOf(session.getAttribute("password")).equals(matKhau)) {
				return true;
			} else {
				TaiKhoan taikhoan = taiKhoanService.findByTenTaiKhoanAndMatKhau(tenTaiKhoan, matKhau);
				if (taikhoan == null) {
					throw new Exception("Invalid User Id or Password. Please try again.");
				}
			}
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
