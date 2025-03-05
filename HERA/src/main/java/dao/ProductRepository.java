package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> pList = new ArrayList<>();
	
	// ProductRepository를 싱글톤으로 사용하기 위한 코드 추가
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository getInstance() {
		return instance;
	}
	

	public ProductRepository() {
		Product p1 = new Product("P11", "리플렉션 스킨 글로우 쿠션 파운데이션", 60000, "속부터 투명하게 차올라 유연하게 빛나는 리플렉션 글로우", "파운데이션/쿠션", "foundation/1.jpg");
		
		Product p2 = new Product("P41", "헬씨 글로우 듀이 밤", 43000, "맑고 섬세한 광채를 더하는 슬로우에이징 글로우 밤", "블러셔/하이라이터", "blush/1.jpg");
		
		Product p3 = new Product("P42", "헤라 블러쉬", 50000, "물 들이듯이 표현되는 컬러와 부드러운 텍스처로 자연스러운 생기를 더하는 블러쉬", "블러셔/하이라이터", "blush/2.jpg");
		
		Product p4 = new Product("P43", "센슈얼 립 앤 치크", 45000, "피부 톤 위에 얇게 베어 나와 투명한 생기를 부여하는 립앤치크", "블러셔/하이라이터", "blush/3.jpg");
		
		Product p5 = new Product("P12", "블랙 쿠션 파운데이션 SPF34/PA++", 74000, "감도 높은 피부의 시작. 얇고 매끈한 커버로 완성하는 소프트 새틴 스킨", "파운데이션/쿠션", "foundation/2.jpg");
		
		Product p6 = new Product("P13", "스킨 틴트 컴피 스프레더 SPF50+/PA++++", 70000, "갓 세안한 듯 맑고 투명한 블러리 글라스 스킨을 선사하는 스킨 틴트", "파운데이션/쿠션", "foundation/3.png");
		
		pList.add(p1);
		pList.add(p2);
		pList.add(p3);
		pList.add(p4);
		pList.add(p5);
		pList.add(p6);
	}
	
	public ArrayList<Product> getAll() {
		return pList;
	}
	
	// code로 해당하는 dto 객체 얻기
	public Product getProductByCode(String code) {
		Product productByCode = null;
		
		for(int i = 0; i < pList.size(); i++) {
			Product p = pList.get(i);
			if(p != null && p.getpCode() != null && p.getpCode().equals(code)) {
				productByCode = p;
				break;
			}
		}
		
		return productByCode;
	}
	
	public void addProduct(Product product) {
		pList.add(product);
	}
}
