<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HERA | 회원 가입</title>
  <!-- Bootstrap 4.6 CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/index.css?ver=2501301" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

 <%@ include file="./menu.jsp"%>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">회원가입</h2>
                <!--<form action="registerProcess.jsp" method="post" onsubmit="return validateForm()">  -->
                	<form action="processRegister.jsp" method="post">
                    <div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="id" name="id" required>
                    </div>
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                        <input type="password" class="form-control" id="pw" name="pw" required>
                        <!--<small class="form-text text-muted">비밀번호는 최소 8자 이상, 특수문자로 시작해야 합니다.</small>-->
                    </div>
               		 <div class="form-group">
                        <label for="name">이름</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">전화번호</label>
                        <input type="text" class="form-control" id="phone" name="phone" required placeholder="010-xxxx-xxxx">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">가입하기</button>
                </form>
            </div>
        </div>
    </div>

 <%@ include file="./footer.jsp"%>
 
  <!-- Bootstrap 4.6 JS 및 의존성 -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
  <script src="../js/index.js"></script>

</body>
</html>
