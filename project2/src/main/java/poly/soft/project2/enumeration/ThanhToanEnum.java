package poly.soft.project2.enumeration;

public enum ThanhToanEnum {
	TIỀN_MẶT(0, "Tiền mặt"), CHUYỂN_KHOẢN(1, "Chuyển khoản");

	private int code;
	private String type;

	private ThanhToanEnum(int code, String type) {
		this.code = code;
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

}
