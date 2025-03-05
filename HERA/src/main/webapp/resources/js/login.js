$(document).ready(function () {
    $("#loginForm").submit(function (event) {
        event.preventDefault(); // 기본 폼 제출 방지

        let id = $("#id").val();
        let pw = $("#pw").val();

        $.ajax({
            type: "POST",
            url: "login_process.jsp", // JSP 요청
            data: { id: id, pw: pw },
            success: function (response) {
                if (response === "success") {
                    $("#loginModal").modal("hide"); // 로그인 성공 시 모달 닫기
                    location.reload(); // 페이지 새로고침 없이 로그인 반영
                } else {
                    $("#loginError").show().text("로그인 실패!"); // 로그인 실패 메시지 표시
                }
            }
        });
    });
});
