<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Profile Page</title>
	<style>
		h1 
		{ 
			color: #ffffff;
			font-family: 'Lato', sans-serif; 
			font-size: 40px; 
			font-weight: 300; 
			line-height: 58px; 
			margin: 0 0 58px; 
			text-transform: uppercase;
		}
	</style>
</head>
<body style="background-color:#1c2329">
		<form>
				<a href="WelcomePage.jsp" style="text-decoration: none; position: fixed; color: #ffffff;">logout</a>
		</form>
	<% 
			String userName = request.getParameter("userName"); 
	%>
	
	<h1><center> WELCOME MR.<%=userName %></center></h1>
	<div><img alt="profile img not available" src="profileImage.jpg" width="200px" height="300px"></div>
</body>
</html>