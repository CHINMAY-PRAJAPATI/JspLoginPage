<html>
<head>
	<title>Login Page</title>
	<script>
			var divs = new Array();
			divs[0] = "errUserName";
			divs[1] = "errPassword";
			divs[2] = "errSub";
			
			function Validation()
			{
				var inputs = new Array();
				inputs[0] = document.getElementById("userName").value;
				inputs[1] = document.getElementById("password").value;
				inputs[2] = document.getElementById("sub").value;
				
				var errors = new Array();
				errors[0] = "<span style='color:red'>Enter User Name</span>";
				errors[1] = "<span style='color:red'>Enter Password</span>";
				errors[2] = "<span style='color:red'>Enter Required Credentials</span>";
				for(i in inputs)
				{
					var d = divs[i];
					var e = errors[i];
					
					if(inputs[i]=="" && (i==0 || i==1))
					{
						document.getElementById(d).innerHTML=e;
					}
					else if(i==2)
					{
						if(inputs[0]=="" || inputs[1]=="")
						{
							document.getElementById(d).innerHTML=e;
						}
						else
						{
							document.getElementById(d).innerHTML="";
						}
					}	
					else
					{
						document.getElementById(d).innerHTML="OK";
					}
				}
			}
	</script>
	<style>
		body,div,p
		{
			margin:0px;
			padding:0px;
		}
		#id1
		{
			margin: 1px 550px;
			text-align: center;
			border:1px double black; 
			width:20%; 
			height:60%;
			background-color:#1c362a ;	
		}
		#id2
		{
			color: #edefee;
		}
	</style>
</head>
<body bgcolor="#2d5845" >
	<%! 
		String userName = "Enter User Name"; 
	%>
	<%
		userName = request.getParameter("userName");
	%>

	<br><br><br><h1 id="id2"><center>Enter Your Details To Login</center></h1>
	<br><br>
	<form method="post" action="ValidationController">
			<div id="id1">
			<div id="id2">
				<br><br><br><p style="font-size:+20;">User Name:</p>
				<input type="text" name="userName" id="userName" value="<%= userName %>" placeholder="Enter User Name" onKeyUp="Validation()"><br>
				<div id="errUserName" ></div><br><br>
			</div>
			<div id="id2">
				<p style="font-size:+20;">Password:</p>
				<input type="password" name="password" id="password" placeholder="Enter Password" onKeyUp="Validation()"><br>
				<div id="errPassword"></div><br><br><br>
			</div>
			<div>
				<input type="submit" id="sub" onKeyDown="" value="login"><br>
				<div id="errSub"></div><br><br><br>
			</div>
		</div>
	</form>
</body>
</html>	