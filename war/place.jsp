<%@ page language="java" contentType="text/html; charset=UTF-8"
	language="java" import="java.sql.*" errorPage=" "%>

<%
	String username_ses = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">

<title>Welcome to Ranong</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="navbar-fixed-top.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="assets/js/ie-emulation-modes-warning.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body >





	<div class="container" style="background-color: white">

		<!-- Fixed navbar -->
		<div class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Ranong</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="place.jsp">Place</a></li>
						<li><a href="#contact">Food</a></li>
						<li><a href="#contact">Culture</a></li>
						<li><a href="productionpage.html">Production</a></li>

						<li><a href="#"> <!-- ==========================login ============================ -->

								<%
									if (null == username_ses) {
								%>

								<form method="post" action="checkLogin.jsp">
									<input type="text" name="username" size="15"> <input
										type="password" name="password" size="15"> <input
										type="submit" value="login">
								</form> <%
 	}
 %> <!-- ========================= Logout =========================== -->
								<%
									if (null != username_ses) {
								%> <%=username_ses%><li><a href="Logout1.jsp"><input
										type="submit" value="logout"></a></li> <%
 	}
 %>


						</a></li>
					</ul>
					<!--  =========================================================== -->


				</div>
				<!--/.nav-collapse -->


			</div>
		</div>


		<marquee behavior="scroll" scrolldelay="200">
			<div id="result"></div>
		</marquee>


		<!-- Wrapper for slides -->
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/hotwater.jpg"
							style="width: 1200px; height: 500px;" alt="First slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images/mountain.jpg"
							style="width: 1200px; height: 500px;" alt="Second slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images/ngaowaterfall.jpg"
							style="width: 1200px; height: 500px;" alt="Third slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images/payam.jpg" style="width: 1200px; height: 500px;"
							alt="Four slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images/prateesit.jpg"
							style="width: 1200px; height: 500px;" alt="Firht slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images/waterfall.jpg"
							style="width: 1200px; height: 500px;" alt="Six slide">
						<div class="carousel-caption"></div>
					</div>
				</div>


				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
				<marquee id="adver"></marquee>
			</div>
		</div>
		<!-- /.carousel -->



		<section id="provider">
			<div id="detail"></div>
		</section>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="assets/js/docs.min.js"></script>


		<script src="js/jquery-1.10.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script>
		$(document)
				.ready(
						function() {
							$(".tool").tooltip();
							var xmlhttp = new XMLHttpRequest();//สร้าง object 
							xmlhttp.onreadystatechange = function() { //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
								if (xmlhttp.readyState == 4
										&& xmlhttp.status == 200) {
									document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
								}
							}
							var url = "Slide.jsp";
							//เปิด connection
							xmlhttp.open("GET", url, true);
							xmlhttp.send();

						});
	</script>
</body>
</html>
<script>
		$(document).ready(function() {
							var data = '{"travel":['
									+ '{"images":"waterfall.jpg","heading":"น้ำตกปุญญาบาล","paragraph":" ตั้งอยู่ในเขต อุทยานแห่งชาติลำน้ำกระบุรี เป็นน้ำตกที่ไหลแรงตลอดปี อยู่ติดกับถนนเพชรเกษมสายเก่า บริเวณกิโลเมตรที่ 598 ห่างจากที่ทำการอุทยานแห่งชาติ 2 กิโลเมตร มีนักท่องเที่ยวแวะชมปีละเกือบแสนคน ต้นน้ำเกิดจากป่าละอุ่นและป่าราชกรูด บริเวณต้นน้ำของน้ำตกปุญญบาลมีต้นพญาไม้ หรือขุนไม้ ขนาดโตวัดรอบที่ระดับความสูงเพียงอก 442 เซนติเมตร สูง 50 เมตร " },'
									+ '{"images":"hotwater.jpg","heading":"บ่อน้ำร้อน","paragraph":"บ่อน้ำร้อน สวนสาธารณะรักษะวาริน เป็นบ่อน้ำร้อนซึ่งเกิดขึ้นเองตามธรรมชาตินี้มีอยู่ 3 บ่อ คือ บ่อพ่อ บ่อแม่ และบ่อลูก ทั้ง 3 บ่อ มีอุณหภูมิสูงประมาณ 65 องศาเซลเซียส น้ำพุร้อนแห่งนี้ได้รับการวิเคราะห์จากกรมวิทยา ศาสตร์บริการว่าประกอบด้วยแร่ธาตุที่สำคัญ และเป็นแหล่งเดียวในประเทศไทยที่ไม่มีสารกำมะถันเจือปนอยู่เลย" },'
									+ '{"images":"prateesit.jpg","heading":"พระราชวังรัตนรังสรรค์","paragraph":"พระราชวังรัตนรังสรรค์ถือเป็นพระราชวัง ที่มีการประกาศพระบรมราชโองการ ยกขึ้นเป็นพระราชวัง 1 ใน 19 แห่งของประเทศไทย และเป็นพระราชวัง 1ใน 6 แห่งที่สร้างขึ้นตามหัว เมือง ในรัชสมัยพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว รัชกาลที่5 เป็นพระราชวังที่สร้างจากไม้ทั้งหลัง สวยงามาก เพื่อเป็นอนุสรณ์ ในการเสด็จประทับแรมของพระมหากษัตริย์ทั้ง 3 พระองค์ และจะเป็นสถานที่ท่องเที่ยวเชิงประวัติศาสตร์ อีกแห่งหนึ่งของจังหวัดระนองอีกด้วย" }]}';

							var result = eval("(" + data + ")");
							for (var i = 0; i < result.travel.length; i++) {
								$("#detail").append("<div class=\"col-md-4\"><div class=\"panel panel-default\"><div class=\"panel-heading\">"+result.travel[i].heading+"</h4></div><img src=\"images/"+result.travel[i].images+"\"  id=\"travel\" width=\"349\" height=\"260\"><div class=\"media-body\"><p>"+result.travel[i].paragraph+"</p></div></div></div></div>"); 								
							}
						});
</script>

