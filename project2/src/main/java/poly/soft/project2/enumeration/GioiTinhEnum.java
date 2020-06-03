package poly.soft.project2.enumeration;

public enum GioiTinhEnum {
	
	NAM(0,"Nam"),NỮ(1,"Nữ"),KHÁC(2,"Khác");
	
	private int code;
	private String type;
	
	private GioiTinhEnum(int code, String type) {
		this.code = code;
		this.type = type;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
