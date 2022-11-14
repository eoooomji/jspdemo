<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_02_res.jsp</title>
</head>
<body>
<!-- data=홍길동&chk=서울 -->

<% // scriptlet : jsp에서 java소스를 구현할 때 사용
	String data = request.getParameter("data");
	out.print("<p>" + data + "</p>");
%>

<p> <%=data%> </p>

<p> ${param.data} </p>

<%
	String[] chk = request.getParameterValues("chk");
	if(chk!=null){
		for(String sn : chk)
			out.print("<p>" + sn + "</p>");
	}
%>

<p> ${paramValues.chk[0]}</p>
<p> ${paramValues.chk[1]}</p>
<p> ${paramValues.chk[2]}</p>
</body>
</html>