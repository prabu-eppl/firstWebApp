
<!doctype html>
<html class="fuelux" lang="en">

<jsp:include page="common/header.jsp"></jsp:include>


 <div class="content">
  <!-- Content Start -->
    <div class="main-container">

    <!-- Header Graphics Start -->
    
                           <jsp:include page="common/imageHeader.jsp"></jsp:include>

          
    <!-- Header Graphics End -->

      <div class="container">


<div class="row">
        <div class="col-lg-12">
          <div class="box"> 
            
            <!-- Title Bar Start -->
            <div class="box-title"> 
            <span class="gray"><strong>Bank Details</strong></span> 
<!--              <a href="#" class="btn btn-primary pull-right" style="margin-bottom:10px;opacity:0.9 !important">Download Excel</a> -->
            
            </div>
            
             <div class="content">
              <div class="row">
              <form name="form"  ng-submit="getBankDetailsByIFSC(bank);" method="post"  ng-submit="dataEdit" role="form" >
                 <div class="col-lg-2">
                 <div class="form-group">
                 <label for="inputWarning2" class="control-label">IFSC Code</label>
                <input class="form-control" type="text" name="ifsc_code" id="ifsc_code" ng-model="bank.ifsc_code" autocomplete="off" style="margin-bottom: 20px;padding-bottom: 12px;"/>
                </div>
                </div>
                
                  <div class="col-lg-2">
                  <div class="form-group">
                    <label class="control-label">&nbsp;</label>
                    <button type="submit"  id="submitButton" class="form-control btn btn-orange" style="margin-left: 20px;margin-top:-3 px;">Submit</button>
                  </div>
                </div>
                </form>
                 </div>
            	
            <div id="eormsg" class="side2bar" style="display:none">
            <p style="color: red;"><label id="msg"></label></p>
            </div>
           <style type="text/css">
	.row > div{
        margin-bottom: 15px;
       
    }
	
    .side1bar{
        background: #7e8aa0;
    }
     .side2bar{
        background: #dbdfe5;
        padding-left:20px;
        padding-top:20px;
    }
  
</style>
           <div id="showDetails"  class="side2bar" style="display:none">
              <div class="row">
                 <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">BANK NAME</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{bank_name}}</label> 
                    </div>
                </div>
                
                <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">IFSC CODE</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{ifsc_code}}</label> 
                    </div>
                </div>
              </div>
              
               <div class="row">
                 <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">BRANCH</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{branch}}</label> 
                    </div>
                </div>
                
                <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">STATE</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{state}}</label> 
                    </div>
                </div>
              </div>
              
              
              <div class="row">
                 <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">DISTRICT</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{district}}</label> 
                    </div>
                </div>
                
                <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">CITY</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{city}}</label> 
                    </div>
                </div>
              </div>
              
              
               <div class="row">
                 <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">ADDRESS</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{address}}</label> 
                    </div>
                </div>
                
                <div class="col-lg-2 side1bar">
                   <div class="form-group">
                         <label for="inputWarning2" class="control-label">CONTACT</label> 
                    </div>
                </div>
                <div class="col-lg-4 ">
                   <div class="form-group">
                        <label for="inputWarning2" class="control-label">{{contact_no}}</label> 
                    </div>
                </div>
              </div>
              
            </div>  
           
      
      
			</div>
			 </div>
			 </div>
       
			<br/>
       <br/>
        <p class="text-center">&copy; 2015 YMS. All rights reserved</p>
      </div>

    </div>
</div>
 </div>
<script>
	$(function() {
		$('input[name="daterange"]').daterangepicker();
	});
</script>

</body>
</html>