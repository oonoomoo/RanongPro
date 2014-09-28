
<%
    String strUsername = request.getParameter("username");
	String strPassword = request.getParameter("password");
	
	//Query DB
	String dbUsername ="noom";
	String dbPassword ="1234";
	
	if(strUsername.equals(dbUsername) && strPassword.equals(dbPassword)){
		out.println("Welcom noom");
		
		session.setAttribute("username_session", strUsername);
		%>
		<jsp:forward page="correct.jsp"></jsp:forward>
		<% 
	}else{
		out.println("Username or Password incorrect Please try again.");
		
		%>
		<jsp:forward page="incorrect.html"></jsp:forward>
		<% 
	}
	
%>

    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>


</body>
</html>