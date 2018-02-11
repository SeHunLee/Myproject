<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--      <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script> -->
<script>
	$(function() {
		var tech = getUrlParameter('tab');
		if (tech== undefined){
			tech=0;
		}
		$("#tabs").tabs({ active: tech });
	});
	
	var getUrlParameter = function getUrlParameter(sParam) {
	    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;

	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');

	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? true : sParameterName[1];
	        }
	    }
	};

</script>


  <style>
#tabs{
width: 80%;
height: 150%;
margin: auto;
}
a{
font-size: 20px;
color: purple;
}
table{
margin: auto;
}
td{
text-align: left;
}
img{
width: 200px;
height: 160px;
}
.watch{
width: 600px;
height: 140px;
text-align: center;
}

</style>
</head>
<body>
<div id="tabs"> 
  <ul>
    <li><a href="#tabs-1">등장 인물</a></li>
    <li><a href="#tabs-2">명장면</a></li>
  </ul>
<div id="tabs-1">    
<table border="1">
<tr>
<td><img src="images/naruto_naruto.jpg" ></td>
<td>
우즈마키 나루토<br>
몸에 구미라는 미수가 봉인 되어있는 장난꾸러기<br>
호카게가 되겠다는 꿈을 가지고 있으며, 그 꿈을 이루기 위해 노력한다.<br>
의외성 No1 닌자로 기발한 생각과 끈기로 위기를 극복해 나아간다.
</td>
</tr>
<tr>
<td><img src="images/sasuke.jpg" ></td>
<td>
우치하 사스케<br>
우치하 가문의 마지막 생존자<br>
인술,체술 모두 재능에 뛰어나며, 사륜안을 가지고 있다.<br>
자신의 형 우치하 이타지를 살해하는 것을 목표로 두고 있다.
</td>
</tr>
<tr>
<td><img src="images/sakura.jpg" ></td>
<td>
하루노 사쿠라<br>
나루토와 사스케와 같은 7반 소속닌자<br>
특히 환술에 뛰어나며, 의료인술을 주로 사용한다.<br>
작중 초반에 약한 모습을 많이 보이나, 후반부에 갈수록 뛰어난 모습을 많이 보여준다. 
</td>
</tr>
<tr>
<td><img src="images/kakasi.jpg" ></td>
<td>
하타케 카카시<br>
7반의 담당 상급닌자<br>
사륜안을 이용한 인술카피가 가능하며 치도리라는 인술을 주로 사용한다.<br>
어린시절부터 전쟁에 참가하거나, 어린나이에 상급닌자가 되는 등 뛰어난 면모를 많이 보인다. 
</td>
</tr>
<tr>
<td><img src="images/chinade.jpg" ></td>
<td>
센쥬 츠나데<br>
나뭇잎 마을의 5대 호카게<br>
전시에는 지라이야,오로치마루와 함께 전설의 3닌자라 불렸으며,<br>
지금은 호카게로서 역할을 하고 있다. 의료닌자이며 괴력의 소유자이다. 
</td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
<div id="tabs-2">
<table border="1">
<tr  >
<td class="watch"><a href="https://www.youtube.com/watch?v=F4JXpnuFwJY">나루토  vs 사스케 (사스케 탈환 작전) </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=xPfqY18CPKM">나루토 첫 나선환 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=E5wTp4eM-rY">나루토 첫  풍둔 나선수리검 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=VV_joqa4D-g">사스케 vs 이타치 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=qFdtK6-Ynk4">나루토 vs 페인 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=ibJ6i4nnrIo">나루토 vs 사스케(마지막) </a></td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
</div>
</body>
</html>