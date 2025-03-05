<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
<link rel="stylesheet" href="../css/menu.css?ver=2502211" />
<script src="../js/login_validation.js"></script>

<%
    String loginId = (String) session.getAttribute("user");
	String prevPage = request.getHeader("Referer"); // 사용자가 머물던 페이지 URL
	if (prevPage != null && !prevPage.contains("login.jsp")) { 
	    session.setAttribute("prevPage", prevPage);
	}
%>

<nav class="navbar navbar-expand-md d-none d-md-block navbar-dark cs-bg-black">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline mr-auto" method="GET" action="search.jsp">
			    <button class="btn my-2 my-sm-0" type="submit">
			        <i class="fa-solid fa-magnifying-glass" style="color: white;"></i>
			    </button>
			    <input class="form-control search-input ml-sm-2" type="search" placeholder="무엇을 찾고 계십니까?" aria-label="Search" name="keyword">
			</form>

            <a class="navbar-brand pr-5" href="./index.jsp" id="logo">
                <img src="../images/logo.png" alt="" width="100px">
            </a>
            <ul class="navbar-nav ml-auto pb-0">
                <% if (loginId == null) { %>
                    <!-- 로그인 전 -->
                    <li class="nav-item mt-3 pb-0">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal">
                            <h6>로그인</h6>
                        </a>
                    </li>
                    <li class="nav-item mt-3 pb-0">
                        <a class="nav-link" href="./join.jsp">
                            <h6>회원가입</h6>
                        </a>
                    </li>
                <% } else { %>
                    <!-- 로그인 후 -->
                    <li class="nav-item mt-3 pb-0">
                        <a class="nav-link" href="./logout.jsp">
                            <h6>로그아웃</h6>
                        </a>
                    </li>
                    <li class="nav-item mt-3 pb-0">
                        <span class="nav-link text-white"><%= loginId %> 님</span>
                    </li>
                <% } %>
                <li class="nav-item mt-3 ml-3 pb-0">
                    <a class="nav-link" href="./cart.jsp">
                        <i class="fa-solid fa-cart-shopping" style="color: white;"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<nav class="navbar navbar-expand-md cs-bg-black sticky-top">
    <div class="container-fluid">
    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	        <ul class="navbar-nav mx-auto pl-5 pr-5">
	            <li class="nav-item pr-5">
	                <a class="nav-link" href="./brand.jsp">헤라 스토리</a>
	            </li>
	            <li class="nav-item dropdown  pr-5">
	                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="menu">메이크업</a>
	                <div class="dropdown-menu">
				      <a class="dropdown-item" href='./faces.jsp'>페이스</a>
				      <a class="dropdown-item" href="./lips.jsp">립</a>
				      <a class="dropdown-item" href="./eyes.jsp">아이</a>
				    </div>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="./board.jsp">고객센터</a>
	            </li>
	        </ul>	
		</div>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</nav>


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
            
                <form action="./process_login.jsp" method="post" onsubmit="return validateForm();">
			        <div class="form-group">
                        <label for="id" class="col-form-label">아이디</label>
                        <input type="text" class="form-control" id="id" name="id" placeholder="관리자: admin">
                    </div>
                    <div class="form-group">
                        <label for="pw" class="col-form-label">비밀번호</label>
                        <input type="password" class="form-control" id="pw" name="pw" placeholder="관리자: 1234">
                    </div>
			        <input type="submit" class="btn btn-info" value="로그인">
			    </form>
            </div>
        </div>
    </div>
</div>
