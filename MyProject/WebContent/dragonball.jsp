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
<td><img src="images/naruto.jpg" ></td>
<td>
손오공<br>
전투력이 낮아 지구로 추방된 하급 사이아인<br>
무천도사의 제자 손오반의 손에 길러지게 된다.<br>
5세 정도에 도시에서 드래곤볼을 찾아 떠난 부르마를 만나 여행하게 된다.
전투를 좋아하나 온순한 성격의 소유자이다.
</td>
</tr>
<tr>
<td><img src="images/sasuke.jpg" ></td>
<td>
<br>
<br>
<br>

</td>
</tr>
<tr>
<td><img src="images/sakura.jpg" ></td>
<td>
<br>
<br>
<br>
 
</td>
</tr>
<tr>
<td><img src="images/kakasi.jpg" ></td>
<td>
<br>
<br>
<br>

</td>
</tr>
<tr>
<td><img src="images/chinade.jpg" ></td>
<td>
<br>
<br>
<br>
 
</td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
<div id="tabs-2">
<table border="1">
<tr  >
<td class="watch"><a href="https://www.youtube.com/watch?v=jvfG2pD4cUM">손오공 vs 피콜로</a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=6DGOgpd5XnM">손오공 vs 베지터 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=MXPy0J3nLqM">손오공 첫 슈퍼사이아인 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=6KSJrdJUQLg">손오반 vs 셀 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=HPlet36WGI4">손오공 첫 슈퍼사이아인3 </a></td>
</tr>
<tr>
<td class="watch"><a href="https://www.youtube.com/watch?v=HwGFQx4e9SM">합체! 베지트</a></td>
</tr>
</table>
<a href="index.jsp">홈으로</a>
</div>
</div>
</body>
</html>