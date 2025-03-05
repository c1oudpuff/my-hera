
        function validateForm() {
            let id = document.getElementById("id").value.trim();
            let pw = document.getElementById("pw").value.trim();

            if (id === "") {
                alert("아이디를 입력하세요.");
                document.getElementById("id").focus();
                return false; // 폼 제출 방지
            }

            if (pw === "") {
                alert("비밀번호를 입력하세요.");
                document.getElementById("pw").focus();
                return false; // 폼 제출 방지
            }

            return true; // 모든 조건을 통과하면 폼 제출 허용
        }