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
height: 115px;
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
<td><img src="images/gon.jpg" ></td>
<td>
곤 프릭스<br>
시골에서 자라며 헌터가 되겠다는 꿈을 가지고 있는 소년<br>
밝고 순수한 성격의 소유자이다.<br>
유명한 헌터의 아들이며, 아버지를 동경하고 있다. 넨은 강화계이다.
</td>
</tr>
<tr>
<td><img src="images/kirua.jpg" ></td>
<td>
키르아 조르딕<br>
첨부 살인자 집안 조르딕 가문의 셋째 아들<br>
어렸을 때 부터 해왔던 훈련으로 암살술에 뛰어나다.<br>
곤으로 인해 많은 영향을 받으며, 넨은 변화계이다.
</td>
</tr>
<tr>
<td><img src="images/krapica.JPG" ></td>
<td>
크라피카<br>
쿠르타 족의 생존자. 쿠르타 족의 특징은 감정이 격해지면 눈이 붉게 변한다.<br>
4년전 쿠르타 족을 몰살시킨 환영여단에게 복수하기 위해 헌터가 되려고 한다.<br>
넨은 구현화계와 특질계를 가지고 있다.
</td>
</tr>
<tr>
<td><img src="images/reorio.jpg" ></td>
<td>
레오리오<br>
어린 시절 친구가 병으로 죽자, 그런 사람들에게 도움이 되고자 의사가 되려고 한다.<br>
하지만 의사가 되려면 돈이 많이 필요하게 되자 의대학비 면제를 위해 헌터 시험에 참가한다.<br>
넨은 방출계이다.
</td>
</tr>
<tr>
<td><img src="images/hisoka.jpg" ></td>
<td>
히소카<br>
전투를 좋아하는 전투광이다. 환영여단에 가짜로 입단해 번호는 4번이다.<br>
전투를 좋아하지만, 쾌락살인자이기도 하다. 하지만 성장할 것이라 생각드는 사람은 오래 지켜본다.<br>
곤 프릭스에게 관심이 많다. 렌은 변화계이다. 
</td>
</tr>
<tr>
<td><img src="images/netero.png" ></td>
<td>
네테로 회장<br>
넨을 이용하는 무술의 창시자이다.<br>
헌터협회의 회장이며, 굉장한 실력가이다. 넨에 대한 모든것에 큰 영향을 미쳤다.<br>
아쉽게도 개미 편에서 개미왕과의 전투에서 사망하게된다. 넨은 강화계이다.
</td>
</tr>
<tr>
<td><img src="images/jin.jpg" ></td>
<td>
진 프릭스<br>
곤의 아버지로 많은 헌터들에게 존경받는 헌터이다.<br>
그리드 아일랜드를 만든 사람이며, 업적이 많다. 하지만 알려진 것 또한 많이 없다.<br>
현 더블 헌터이며, 트리플 헌터로의 자격도 갖추었다고 알려졌다. 넨은 강화계로 추정된다.
</td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
<div id="tabs-2">
<table border="1">
<tr  >
<td class="watch"><a href="https://www.youtube.com/watch?v=N_n_qZgETms">크라피카 vs 우보긴</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=TmlCHKtFyZ4&feature=share">곤 vs 히소카</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=zLqHQlqb9H0&feature=share">클로로 vs 조르딕 가</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=Qs9px3VElzg&feature=share">키르아 vs 유피</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=fTeDbykOwmI&feature=share">곤 vs 피트</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=Wr3-92dUwKY">네테로 vs 메르엠</a></td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
</div>
</body>
</html>