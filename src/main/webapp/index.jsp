<html>

<head>
	<style>
		body {
			background-color: lightblue;
			background-image: url("images/im3.jpg");
		}

		h1 {
			color: black;
			text-align: center;
			font-size: 60px;
		}
		
	
	</style>
</head>

<body>
	<div align="center">
	<p id="currentTime"></p>
		<!-- //<img src="https://www.freepnglogos.com/pics/sbi-logo">   -->
		<!-- <img src ="C:\images\bank.png"> -->
		

		<h1 align="center" style="margin-top: 10%">Welcome to SBI
			ATM......!</h1>
		<br> <br> <br>
		<form action="login" style="font-size: x-large;" method="get">
			<label style="color: DarkBlue; font-size: 30px;">
				Enter the Account Number :</label> 
				<input type="text" name="AccountNumber" placeholder="Account Number"
				style="font-size: large; width: 6cm; height: 1cm; padding: 1px solid black; border-style: solid;"
				required><br> <br> <label style="color: DarkBlue; font-size: 30px;">Enter the Pin
				Number :</label> <input type="password" name="UserPin" placeholder="Pin Number"
				style="font-size: large; margin-left: 3.95%; width: 6cm; height: 1cm; padding: 1px solid black; border-style: solid;"
				required><br> <br> <input type="submit" value="Confirm"
				style="color: darkgreen; font-size: medium; align-items: flex-end; margin-left: 20%; width: 3cm; height: 1cm; padding: 1px solid black; border-style: solid; margin-top: 5%; margin-left: 25%">
		</form>
		<form action="exit.jsp">
			<input type="submit" value="Exit"
				style="color: blue; font-size: medium; margin-right: 15%; margin-top: -4%; width: 3cm; height: 1cm; padding: 1px solid black; border-style: solid;">
		</form>

	</div>
</body>

</html>