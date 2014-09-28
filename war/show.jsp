
<!DOCTYPE>
<%
	String getusername_session = (String)session.getAttribute("username_session");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=getusername_session%>

</body>
</html>