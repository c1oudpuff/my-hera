package dto;

import java.io.Serializable;

public class Product implements Serializable {
	private String pCode; // 상품 코드
	private String pName; // 상품명
	private int pPrice; // 상품 가격
	private String pDescription; // 상품 설명
	private String pCategory; // 분류
	private String filename; // 이미지 파일명
	
	
	public Product() {
		super();
	}
	

	public Product(String pCode, String pName, int pPrice, String pDescription, String pCategory, 
			String filename) {
		super();
		this.pCode = pCode;
		this.pName = pName;
		this.pPrice = pPrice;
		this.pDescription = pDescription;
		this.pCategory = pCategory;
		this.filename = filename;
	}


	public String getpCode() {
		return pCode;
	}


	public void setpCode(String pCode) {
		this.pCode = pCode;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public int getpPrice() {
		return pPrice;
	}


	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}


	public String getpDescription() {
		return pDescription;
	}


	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}


	public String getpCategory() {
		return pCategory;
	}


	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}

	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
