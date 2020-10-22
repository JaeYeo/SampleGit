<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오로그인페이지</title>
<script src="jquery-3.3.1.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	// 사용할 앱의 Javascript 키를 설정해주세요
	Kakao.init('1464e22bba0192e33ad671ce5ac29317');
	// redirectUrl: '로그인 후 리다이렉트 할 url'
	Kakao.Auth.authorize({
		redirectUri : 'http://localhost:3000/Kakao_loginAPI/kakaoRedirectForm.jsp',
	});
</script>
</head>
<body>

</body>
</html>