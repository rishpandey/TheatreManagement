<!DOCTYPE HTML>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.zensar.entry.BookSeat"%>
<html>
<head>
<style>
.btn {
	background: #3498db;
	border-radius: 50px;
	font-family: Arial;
	color: #ffffff;
	font-size: 12px;
	padding: 2px 2px 2px 2px;
	text-decoration: none;
	height: 30px;
	width: 70px;
	margin-top: 5px;
	margin-bottom: 5px;
	display: block;
}

input.btn:active {
	background: green
}

input.btn:click {
	background: green
}

.btn1 {
	background: rgb(255, 130, 0);
	border-radius: 50px;
	font-family: Arial;
	color: #ffffff;
	font-size: 12px;
	padding: 2px 2px 2px 2px;
	text-decoration: none;
	height: 30px;
	width: 70px;
	margin-top: 5px;
	margin-bottom: 5px;
	display: block;
}

.btn1:click {
	background: #cecece;
	text-decoration: none;
}

.btn2 {
	background: rgb(255, 255, 1);
	border-radius: 50px;
	font-family: Arial;
	color: #ffffff;
	font-size: 12px;
	padding: 2px 2px 2px 2px;
	text-decoration: none;
	height: 30px;
	width: 70px;
	margin-top: 5px;
	margin-bottom: 5px;
	display: block;
}

.btn2:click {
	background: #cecece;
	text-decoration: none;
}

.btn3 .:click {
	background: #cecece;
	text-decoration: none;
}

.dis {
	display: flex;
}

input[type="submit"]:disabled {
    background: #dddddd;
}
</style>
</head>
<body>


	<% 
	String a[] = {};
	ArrayList arr = new ArrayList();
	String str = "";
	if(request.getParameter("str")!=null){
		str = request.getParameter("str");
		a = str.split(",");
	}
	for(String s : a){
		arr.add(s);
	}
	
	%>
	<form method="get" action='BookSeat'>
		<div class="dis" align='center'>
			<div></div>

			<div>
				<div>
					<input name="button" type="submit" value='1' class="btn"
						<%= arr.contains("1") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='2' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("2") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='3' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("3") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='4' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("4") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='5' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("5") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='6' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("6") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='7' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("7") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='8' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("8") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='9' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("9") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='10' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("10") ? "disabled" : " " %>></input>
				</div>
			</div>

			<div>
				<div>
					<input name="button" type="submit" value='11' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("11") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='12' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("12") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='13' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("13") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='14' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("14") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='15' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("15") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='16' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("16") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='17' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("17") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='18' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("18") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='19' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("19") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='20' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("20") ? "disabled" : " " %>></input>
				</div>
			</div>

			<div>
				<div>
					<input name="button" type="submit" value='21' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("21") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='22' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("22") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='23' class="btn"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("23") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='24' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("24") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='25' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("25") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='26' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("26") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='27' class="btn1"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("27") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='28' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("28") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='29' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("29") ? "disabled" : " " %>></input>
				</div>
				<div>
					<input name="button" type="submit" value='30' class="btn2"
						onclick="this.style.backgroundColor = 'red';" <%= arr.contains("30") ? "disabled" : " " %>></input>
				</div>

			</div>

			<div align='right'>
				<div>
					<input type="button" value='200' class="btn"></input>
				</div>
				<div>
					<input type="button" value='250' class="btn1"></input>
				</div>
				<div>
					<input type="button" value='350' class="btn2"></input>
				</div>

			</div>
			<a href="BookSeat?final=1">Book</a>
</body>
<script>
	
	function toggleActiveState() {
		this.classList.toggle('active');
	}
	var btns = document.querySelectorAll('.btn');
	[].forEach.call(btns, function(btn) {
		btn.addEventListener('click', toggleActiveState, false);
	});
</script>
</html>