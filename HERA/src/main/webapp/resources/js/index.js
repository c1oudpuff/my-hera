$(function(){
	$("#product1").hover(
	    function () {
	        $(this).attr("src", "../images/best1_hover.png"); // hover 시 변경
	    },
	    function () {
	        $(this).attr("src", "../images/best1.png"); // 원래 이미지로 복구
	    }
	);
	
	$("#product2").hover(
	    function () {
	        $(this).attr("src", "../images/best2_hover.png"); // hover 시 변경
	    },
	    function () {
	        $(this).attr("src", "../images/best2.png"); // 원래 이미지로 복구
	    }
	);
	
	$("#product3").hover(
	    function () {
	        $(this).attr("src", "../images/best3_hover.png"); // hover 시 변경
	    },
	    function () {
	        $(this).attr("src", "../images/best3.png"); // 원래 이미지로 복구
	    }
	);
	
	$("#product4").hover(
	    function () {
	        $(this).attr("src", "../images/best4_hover.png"); // hover 시 변경
	    },
	    function () {
	        $(this).attr("src", "../images/best4.png"); // 원래 이미지로 복구
	    }
	);
})