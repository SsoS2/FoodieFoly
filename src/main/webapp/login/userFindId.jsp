<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Foodidy foly site</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">


<script type="text/javascript">
	
// 아이디 찾을때 정보 입력여부 체크 
function check(){
	
	// 유저 이름
	var us_name = document.fr.us_name.value;
	if(us_name == ""){ <% //이메일이 없으면 공백이 전달되므로%>
		alert("이름(실명)을 입력하세요.");
		document.fr.us_name.focus();
		return false;
	}
	
	// 유저 이메일
	var us_email = document.fr.us_email.value;
	if(us_email == ""){  <%//이메일이 없으면 공백이 전달되므로%>
		alert("이메일을 입력하세요.");
		document.fr.us_email.focus();
		return false;
	}
}
	
	function back(){
		history.back();  // 뒤로가기
	}

</script>

</head>
<body>
<!-- 	<h1> userFindId.jsp(foly) </h1>
	<h1> 아이디 찾기 (개인) </h1> -->
	
	<!-- ****** Top Header Area Start ****** --> <!-- 로그인 -->
 	<jsp:include page="../inc/top_header_area.jsp"/>
    <!-- ****** Top Header Area End ****** -->
	
  	<!-- ****** Header Area Start ****** -->  <!-- 사이트 이름 -->
	<jsp:include page="../inc/header_area.jsp"/>
    <!-- ****** Header Area End ****** -->
    
    
    <!-- ****** Contatc Area Start ****** --><!-- 정보 입력폼 -->
    <div class="contact-area section_padding_80">
        <div class="container">
            <div class="row">
                <div class="col-12">
                </div>
            </div>

            <!-- Contact Form  -->
            <div class="contact-form-area">
                <div class="row">
                    <div class="col-12 col-md-5">
                        <div class="contact-form-sidebar item wow fadeInUpBig" data-wow-delay="0.3s" style="background-image: url(img/bg-img/contact.jpg);">
                        </div>
                    </div>
                    <div class="col-12 col-md-7 item">
                        <div class="contact-form wow fadeInUpBig" data-wow-delay="0.6s">
                            <h2 class="contact-form-title mb-30">개인 아이디 찾기</h2>
                            <!-- Contact Form -->
                            <form action="./UserFindIdAction.lo" method="post" name ="fr" onsubmit="return check();">
                                <div class="form-group">
                                    <input type="text" name ="us_name" class="form-control" id="contact-name" placeholder="이름(실명)">
                                </div>
                                <div class="form-group">
                                    <input type="email"  name ="us_email" class="form-control" id="contact-website" placeholder="이메일" >
                                </div>
                                <button type="submit" class="btn contact-btn-login">아이디 찾기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Contact Area End ****** -->
    
    
   	<!-- ****** Top Header Area Start ****** -->
    <div class="top_header_area">
		<div class="container" padding-left="0px 20px">
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <div class="login_register_area d-flex" >
                        <div> </div>
                            <div class="login">
                                <a href="./UserLogin.lo">개인 로그인</a>
                            </div>
                            <div class="login">
                                <a href="./UserFindPw.lo">비밀번호 찾기</a>
                            </div>
                            <div class="login">
                                <a href="./Join.lo">회원가입</a>
                            </div>
                            <div class="register">
                                <a href="./OwnLogin.lo">사업자 로그인</a>
                            </div>
                        </div>
                    </div>
                </div>
   		</div>
    </div>
    <!-- ****** Top Header Area End ****** -->
	
	

</body>
</html>