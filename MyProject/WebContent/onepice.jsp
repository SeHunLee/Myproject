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
height: 105px;
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
<td><img src="images/luffpy.jpg" ></td>
<td>
몽키.D.루피<br>
해적왕이 되는 것이 목표인 소년<br>
어린 시절 만난 샹크스를 동경하고 있다. 샹크스에게 받은 밀짚모자를 소중히 생각한다.<br>
어린 시절부터 사보,에이스와 많은 고난을 겪었으며, 고무고무 열매를 먹은 고무인간이다.
</td>
</tr>
<tr>
<td><img src="images/joro.jpg" ></td>
<td>
롤로노아 조로<br>
루피를 만나기 전 현상금 사냥꾼 조로로 이름을 떨쳤다.<br>
루피의 첫 번째 동료로서 밀짚모자 해적단에 전투원을 맡고 있다.<br>
주로 검3개를 사용하며, 최고의 검객이 되는 것을 목표로 하고 있다.
</td>
</tr>
<tr>
<td><img src="images/osup.png" ></td>
<td>
우솝<br>
거짓말을 잘하는 소년 루피의 세번째 동료이다.<br>
겁이 많고, 약한 모습을 많이 보이나 위기시에 밀짚모자 해적단을 위기에서 구출하고, 사격솜씨나 도구를 다루는 능력으로 의외의 힘을 발휘한다.<br>
붉은머리 해적단의 야솝과의 관계가 있으므로 보이며, 밀짚모자 해적단의 저격수를 맡고 있다. 
</td>
</tr>
<tr>
<td><img src="images/nami.jpg" ></td>
<td>
나미<br>
돈을 밝히는 어린 소녀이며, 해류에 관한 지식이 뛰어나다.<br>
우솝이 만들어준 막대 모양의 무기를 다루며, 기상에 대한 지식도 뛰어나다. 잠시 루피 해적단을 떠난 적이 있으나, 루피의 도움으로 다시 돌아오게 된다.<br>
루피의 네번째 동료로, 밀짚모자 해적단의 항해사를 맡고 있다. 
</td>
</tr>
<tr>
<td><img src="images/sangji.jpg" ></td>
<td>
상디<br>
루피의 다섯번째 동료<br>
해상 레스토랑에서 루피와 처음 만났으며, 올블루를 찾겠다는 꿈을 가지고 있다.<br>
밀짚모자 해적단의 요리사이며, 전투력도 뛰어나다. 전투시 주로 발을 사용한다. 하지만 해상레스토랑 전의 그의 과거에 대해서는 아무도 모른다. 
</td>
</tr>
<tr>
<td><img src="images/chyopa.jpg" ></td>
<td>
토니토니 쵸파<br>
루피의 여섯번째 동료<br>
사람사람 열매를 먹은 동물이다. 스승인~~에게 의술을 전수받았다.<br>
밀짚모자 해적단의 의사이며, 럼블볼이라는 약을 먹고 자신의 몸의 형태를 변화가 가능하고, 거대화도 가능하다. 
</td>
</tr>
<tr>
<td><img src="images/robin.jpg" ></td>
<td>
니코 로빈<br>
루피의 일곱번째 동료<br>
알라바스타에서 적으로 루피와 만났으나 그 후에 동행을 하게 된다.<br>
꽃꽃열매의 능력자로 손을 꽃처럼 아무 장소에서나 만들 수 있다. 고고학자이며 고대 지식에 뛰어나다. 자세한 것은 미스테리이다. 
</td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
<div id="tabs-2">
<table border="1">
<tr  >
<td class="watch"><a href="https://www.youtube.com/watch?v=4xa3Iqu2P5Q">샹크스 루피 구출 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=c0-sT7-1J8I">조로 vs 미호크 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=fUtWhyrSR8s">루피 기어세컨드 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=60XYXIkAUkg">우솝 2년후 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=gJE1DtFHVvc">루피 패왕색 패기</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=B0EvZBRuHws">에이스 죽음</a></td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
</div>
</body>
</html>