<%String UserName=(String)session.getAttribute("UserName");
 %>
 
<!--   Download Excel Form Submit Action start-->

<form id="downloadExcelForm" action="../servlet/DownloadExcel" method="GET">
 <input type="hidden" name="pageName" id="downloadPageFormData">
</form>


<!--   Download Excel Form Submit Action End-->


  <!-- Top Content Bar Start -->
  <div class="top-bar">
    <div class="main-container">
    <div class="container">
      <div class="row">

        <div class="col-lg-6 col-sm-6 hidden-xs">
          <ul class="left-icons icon-list">
            <li><a href="#" class="sidebar-collapse"><i class="fa fa-dedent"></i></a></li>
          </ul>
        </div>

        <div class="col-lg-6 col-sm-6 col-xs-12">
          <ul class="right-icons icon-list">
            
            
            <li>
              <a href="#" class="welcome-user">Welcome, <%=UserName %></a>
            </li>
                      <li><a href="logout"><i class="fa fa-power-off"></i></a></li>

          </ul>
        </div>

      </div>
    </div>
    </div>
  </div>
  <!-- Top Content Bar End -->