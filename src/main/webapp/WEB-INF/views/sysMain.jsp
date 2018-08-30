<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
<META HTTP-EQUIV="expires" CONTENT="0">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<jsp:include page="../../jsp/link.jsp"></jsp:include>
<title>系统主界面</title>
</head>
<body>
<jsp:include page="../../jsp/header.jsp"></jsp:include>
	<div class="container-fluid mimin-wrapper">
	<jsp:include page="../../jsp/menu.jsp"></jsp:include>
	<jsp:include page="../../jsp/content.jsp"></jsp:include>
	</div>
<jsp:include page="../../jsp/scripts.jsp"></jsp:include>
</body>
</html>