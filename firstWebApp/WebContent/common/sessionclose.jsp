<%
try{
 
 String strcontextpath = request.getContextPath(); //String ContextPath Variable
 
 System.out.println("++++++++++"+strcontextpath);
	 if(session.getAttribute("LoginId")==null) {
		 System.out.println("===================");
		 %>
		<script type="text/javascript">
window.location.href = "login";
</script>
<%
		
	  }
	
}catch(Exception e){
	System.out.print(e+" from SessionClose.jsp");
	
}
%>