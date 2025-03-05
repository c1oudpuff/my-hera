function checkAddProduct() {
	let code = document.getElementById("code")
	let name = document.getElementById("name")
	let price = document.getElementById("price")
	let inStock = document.getElementById("inStock")
	let image = document.getElementById("image")
	
	/*
		유효성 검증 조건
		1) code: 첫글자는 무조건 P / 숫자를 조합해서 5~10자
		2) name: 1~12자
		3) price: 숫자만 / 음수 X
		4) inStock: 숫자만
		5) image: 제출 시 이미지 등록 필수
	*/
	
	function check(regExp, element, msg) {
		if(regExp.test(element.value)) {
			return true // submit을 하겠다!
		} else {
			alert(msg)
			element.select()
			element.focus()
			return false
		}
	}
	
	if(!check(/^P[0-9]{4,9}$/, code, "[상품코드] 입력 오류\n상품 코드는 P로 시작해야 합니다.\n숫자를 조합해서 5~10자 이내로 입력하세요.")) return false
		
	if(name.value.length<1 || name.value.length>12) {
		alert("[상품명]\n상품명을 1~12자 이내로 입력하세요.")
		name.select()
		name.focus()
		return false
	}
		
	if(price.value.length==0) {
		alert("[상품 가격]\n숫자를 입력하세요.")
		price.select()
		price.focus()
		return false
	}
	
	if(isNaN(price.value)) {
		alert("[상품 가격]\n숫자만 입력하세요.")
		price.select()
		price.focus()
		return false
	}
		
	if(price.value<0) {
		alert("[상품 가격]\n양수만 입력하세요.")
		price.select()
		price.focus()
		return false
	}
		
	if(!image.value) {
		alert("[상품 이미지]\n상품 이미지를 첨부하세요.")
		return false
	}
		
	document.newProduct.submit()
}