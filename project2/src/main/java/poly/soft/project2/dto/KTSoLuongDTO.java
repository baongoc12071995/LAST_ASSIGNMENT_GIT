package poly.soft.project2.dto;

import java.io.Serializable;

public class KTSoLuongDTO implements Serializable {
	private int kichThuocId;
	private int soLuong;

	public KTSoLuongDTO() {
		super();
	}

	public KTSoLuongDTO(int kichThuocId, int soLuong) {
		super();
		this.kichThuocId = kichThuocId;
		this.soLuong = soLuong;
	}

	public int getKichThuocId() {
		return kichThuocId;
	}

	public void setKichThuocId(int kichThuocId) {
		this.kichThuocId = kichThuocId;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	@Override
	public String toString() {
		return "\n{kichThuocId=" + kichThuocId + ", soLuong=" + soLuong + "}";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + kichThuocId;
		result = prime * result + soLuong;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		KTSoLuongDTO other = (KTSoLuongDTO) obj;
		if (kichThuocId != other.kichThuocId)
			return false;
		if (soLuong != other.soLuong)
			return false;
		return true;
	}

}

// class Student {
// private int id;
// private String name;
//
// public Student(int id,String name){
// this.id = id;
// this.name = name;
// }
//
// public void setId(int id){
// this.id = id;
// }
//
// public int getId(){
// return this.id;
// }
//
// public void setName(String name){
// this.name = name;
// }
// public String getName(){
// return this.name;
// }
//
// @Override
// public String toString(){
// return this.id+ " " +this.name;
// }

// public class Main {
// public static void main(String[] args) {
// List<Student> list1 = new ArrayList<>();
// List<Student> list2 = new ArrayList<>();
//
// List<Student> list3 = new ArrayList<>();
// List<Student> list4 = new ArrayList<>();
// List<Student> list5 = new ArrayList<>();
//
// Student s1 = new Student(1,"aaa");
// Student s2 = new Student(2,"bbb");
// Student s3 = new Student(3,"ccc");
//
// list1.add(s1);list1.add(s2);
// list2.add(s2);list2.add(s3);
//
// list1.forEach(list3::add);
// list2.forEach(list4::add);
// list1.forEach(list5::add);
//
// list3.removeAll(list2);
// list4.removeAll(list1);
// list5.retainAll(list2);
//
// System.out.println(list1);
// System.out.println(list2);
// System.out.println(list3);
// System.out.println(list4);
// System.out.println(list5);
// System.out.println(list1);
// System.out.println(list2);
//
// }
// }
