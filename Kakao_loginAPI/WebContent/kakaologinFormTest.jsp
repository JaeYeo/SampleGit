<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kakao API예제</title>
<script src="jquery-3.3.1.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
	<p>리다이렉트 예제 - authorize, login, loginForm</p>
	<a href="kakaologin.jsp">로그인 이동</a>

	<p>페이지내 처리 예제 - createLoginButton</p>
	<span>id:  </span><span class="id"></span></br>
	<span>email:  </span><span class="email"></span></br>
	<a id="kakao-login-btn"></a>
	</br>

	<a href="https://developers.kakao.com/logout">로그아웃</a>

	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('1464e22bba0192e33ad671ce5ac29317');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) { // authObj가 참일 때, 자료를 성공적으로 보냈을떄 출력되는 부분
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) { // res가 참일때, 자료를 성공적으로 보냈을 때 출력되는 부분
						console.log(res);
						console.log(res.id);
						console.log(res.kakao_account.email);
						console.log(res.properties.nickname);
						console.log(res.properties['nickname']);
						console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력

						var kakaonickname = res.properties.nickname; //카카오톡 닉네임을 변수에 저장
						var kakao_mail = res.kakao_account.email; //카카오톡 이메일을 변수에 저장함
						//카카오톡의 닉네임과,mail을 url에 담아 같이 페이지를 이동한다.
						/* window.location.replace("http://"
										+ window.location.hostname
										+ ((location.port == "" || location.port == undefined) ? "" : ":"
										+ location.port)
										+ "/hansub_project/home?kakaonickname="
										+ kakaonickname + "&kakaoe_mail=" + kakaoe_mail); */
						
						document.querySelector('.id').innerText = kakaonickname;
						document.querySelector('.email').innerText = kakao_mail;
										
						
					}
				})
				alert(JSON.stringify(authObj));
			},
			
			fail : function(err) { //에러 발생시 에러 메시지를 출력한다.
				alert(JSON.stringify(err));
			}
		});
		//]]>
	</script>
</body>
</html>