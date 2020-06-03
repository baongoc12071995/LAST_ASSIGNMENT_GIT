package poly.soft.project2.enumeration;

public enum HDTrangThaiEnum {
	IN_PROGRESS(0, "Đang chờ"), DONE(1, "Hoàn thành");

	private HDTrangThaiEnum(int code, String state) {
		this.code = code;
		this.state = state;
	}

	private int code;
	private String state;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
