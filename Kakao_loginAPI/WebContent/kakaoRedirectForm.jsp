<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kakao</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('1464e22bba0192e33ad671ce5ac29317');

	Kakao.Auth.login({
		success : function(authObj) {
			Kakao.API.request({
				url : '/v2/user/me',

				success : function(res) {
					console.log(res);
					var id = res.id; // 데이터베이스의 primary Key값 속성 즉 기본키의 식별성
					var email = res.kakao_account.email;
					var name = res.properties.nickname;
					var image = res.properties.profile_image;
					var html = '<br>' + email + '<br>' + name + '<br>'
							+ '<img src='+ image +'>';

					//$('body').append(html);
					var kakaoInfo = document.createElement('div');
					var kakaoText = document.createTextNode(kakaoInfo.innerHTML = html);
					document.body.appendChild(kakaoInfo);
					
					
				}
			});
			console.log("authObj====" + authObj);
			var token = authObj.access_token;
			alert(JSON.stringify(authObj));
		},
		fail : function(err) { //에러 발생시 에러 메세지 출력
			alert(JSON.stringify(err));
		}
	});
	//]]>
</script>
</head>
<body>

</body>
</html>