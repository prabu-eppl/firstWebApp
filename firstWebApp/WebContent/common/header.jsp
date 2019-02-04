<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>



<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>YMS-Admin</title>
  
<jsp:include page="sessionclose.jsp"></jsp:include>


<%
String LoginId=(String)session.getAttribute("LoginId");
String UserName=(String)session.getAttribute("UserName");
Integer Role=(Integer)session.getAttribute("Role");

%>
  <jsp:include page="resources.jsp"></jsp:include>

</head>


<body class="no-margin-top" ng-app="ymsApp" ng-controller="ymsControl">
<jsp:include page="menu.jsp"></jsp:include>
<jsp:include page="topPanel.jsp"></jsp:include>

<input type="hidden" id="sessionLoginId" value="<%=LoginId%>">

<%-- <input type="hidden" id="roleAccessMain" value="<%=roleAccessMain%>"> --%>
<%-- <input type="hidden" id="roleAccessSub" value="<%=roleAccessSub%>"> --%>