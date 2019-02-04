<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
String menupath="../servlet"; 

if(session.getAttribute("MenuList")!=null){

int levelcnt=1;
Integer menu_cnt=(Integer)session.getAttribute("MenuCnt");
JSONObject menuObj = new JSONObject((String)session.getAttribute("MenuList"));

JSONArray menulist = menuObj.getJSONArray("menulist");


 //System.out.println("main menu : "+menulist);
%>

  <!-- Left Sidebar Start -->
  <div class="sidebar sidebar-left">

    <!-- Logo Start -->
    <div class="logo-container">
      <a href="dashboard"><img style="margin-top:20px;" src="../resources/assests/images/logo.png"/></a>
    </div>
    <!-- Logo End -->


 <!-- Menu Start -->
    <ul class="main-menu">
      <% 
    for(int mni=0;mni<menu_cnt;mni++){
     	String menu_name = ((JSONObject) menulist.get(mni)).getString("menu_name");
     	String url = ((JSONObject) menulist.get(mni)).getString("url");
     	String menu_icon = ((JSONObject) menulist.get(mni)).getString("menu_icon");
     	int submenuCnt=((JSONObject) menulist.get(mni)).getInt("sub_menu_cnt");
     	//JSONObject submenulist =((JSONObject) menulist.get(mni)).getJSONObject("subMenulist");
     	JSONArray submenulist = new JSONArray();

     	String urlpath="#";
     	String leveid=url;
     	String mainmenuclass="";
     	
     	if(submenuCnt==0){
     		urlpath=menupath+"/"+url;
     	
     		
          	}else{
          		submenulist = ((JSONObject) menulist.get(mni)).getJSONArray("subMenulist");
          		mainmenuclass="has-submenu";
          		leveid="level"+levelcnt;
         		levelcnt++;
             	}
     	//System.out.println("sub menu "+submenulist);
    %>
   <li id="<%=leveid %>" class="<%=mainmenuclass%>">
        <a href="<%=urlpath%>">
          <i class="fa <%=menu_icon%>"></i>
          <span><%=menu_name %></span>
        </a>
        
        <%if(submenuCnt>0) {
        %>
           <ul class="submenu">
           <% 
           for(int smni=0;smni<submenuCnt;smni++){
         	    menu_name = ((JSONObject) submenulist.get(smni)).getString("sub_menu_name");
            	 url = ((JSONObject) submenulist.get(smni)).getString("url");
            	 urlpath=menupath+"/"+url;
           %>
          <li id="<%=url %>" >
            <a href="<%=urlpath%>"><%=menu_name %></a>
          </li>
         
           <% }%>
        </ul>
        
        <%} %>
      </li>
    
    <%} %>
     
  </div>
  <input type="hidden" id="levelcnt" value="<%=levelcnt%>">
  <!-- Left Sidebar End -->
<%}%>