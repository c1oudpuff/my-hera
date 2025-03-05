
$(function () {
    let loading = $(".loading")

    $(window).on("load", function () {
        loading.remove()
    })
    $(window).on("pageshow", function () {
        $("html, body").css({ "overflow": "visible" })
    })

    // 스크롤스파이 활성화 위치 조절
    $('body').scrollspy({ target: '.main', offset: 100 })

    //waypoint 플러그인 동작구문
    $(".wp1").waypoint(function (direction) {
        if (direction === "down") {
            //스크롤을 아래로 내렸을 때 동작구문
            $(".wp1").removeClass("animate__fadeOutDown").addClass("animate__animated animate__fadeInUp").css("visibility", "visible");

        } else {
            $(".wp1").removeClass("animate__fadeInUp").addClass("animate__animated animate__fadeOutDown").css("visibility", "visible");
        }
    }, {
        offset: "75%"
    })
	
	$(".wp2").waypoint(function (direction) {
	        if (direction === "down") {
	            //스크롤을 아래로 내렸을 때 동작구문
	            $(".wp2").removeClass("animate__fadeOutDown").addClass("animate__animated animate__fadeInUp").css("visibility", "visible");

	        } else {
	            $(".wp2").removeClass("animate__fadeInUp").addClass("animate__animated animate__fadeOutDown").css("visibility", "visible");
	        }
	    }, {
	        offset: "75%"
	 })
	 
	 $(".wp3").waypoint(function (direction) {
	 	        if (direction === "down") {
	 	            //스크롤을 아래로 내렸을 때 동작구문
	 	            $(".wp3").removeClass("animate__fadeOutDown").addClass("animate__animated animate__fadeInUp").css("visibility", "visible");

	 	        } else {
	 	            $(".wp3").removeClass("animate__fadeInUp").addClass("animate__animated animate__fadeOutDown").css("visibility", "visible");
	 	        }
	 	    }, {
	 	        offset: "75%"
	 	 })
		 
		 $(".wp4").waypoint(function (direction) {
		 	        if (direction === "down") {
		 	            //스크롤을 아래로 내렸을 때 동작구문
		 	            $(".wp4").removeClass("animate__fadeOutDown").addClass("animate__animated animate__fadeInUp").css("visibility", "visible");

		 	        } else {
		 	            $(".wp4").removeClass("animate__fadeInUp").addClass("animate__animated animate__fadeOutDown").css("visibility", "visible");
		 	        }
		 	    }, {
		 	        offset: "75%"
		 	 })
})