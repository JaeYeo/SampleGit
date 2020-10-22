<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://api.jquery.com/jQuery.ajax"></script>
<script type="text/javascript" src="script/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	
	var walletAddress;
	var totalReceived;
	var Key;
	var txIDarray = null;
	var txID = null;
	
	//API 끌어오기 (ajax 동기식)
	function api(code) {
		
		var grant_type = "authorization_code";
		var client_id = "3350f480ff26792a0af5d8b8cd68e6e8"; //REST API키
		var redirect_uri = "http://localhost:8080/Login/kakaologin.jsp";
		var code = code;
		
		$.post("https://kauth.kakao.com/oauth/token", {grant_type:grant_type, client_id:client_id, redirect_uri:redirect_uri, code:code});
				
			var access_token = data ['access_token']
			$('body').append(access_token+'<br>'); //엑세스토큰값 출력				
			tokenFunction(access_token);			
	};
		
	

	var tokenRequest = new XMLHttpRequest();


</script>
</head>
<body>
kakaologin 페이지입니다.
</body>
</html>