
<!doctype html>
<html class="fuelux" lang="en">
<head>
<jsp:include page="common/resources.jsp"></jsp:include>
</head>

<body class="login-page" ng-app="ymsApp" ng-controller="ymsControl">
<center><img style="padding-top:100px;" src="resources/assests/images/login-logo.png"/></center>

  <div class="login-box">
  
    
    <div class="login-box-title red">Login</div>
    <div class="login-box-content">
    
     <form  method="POST" ng-submit="authentic(dataEdit);"  method="post"  role="form" ng-submit="dataEdit" role="form">
       
        <div class="form-group" ng-class="{ 'has-error': form.loginid.$dirty && form.loginid.$error.required }">
            
               <input type="text" name="loginid" id="loginid" class="form-control" ng-model="dataEdit.loginid" placeholder="Your Username..." required />
            <span ng-show="form.loginid.$dirty && form.loginid.$error.required" class="help-block">Username is required</span>
            </div>
            
            <div class="form-group" ng-class="{ 'has-error': form.password.$dirty && form.password.$error.required }">
             
               <input type="password" name="password" id="password" class="form-control" ng-model="dataEdit.password" placeholder="Your Password..." required />
            <span ng-show="form.password.$dirty && form.password.$error.required" class="help-block">Password No is Required</span>
            </div>
            
            <div class="form-actions">
            <input id="submitButton" type="submit" ng-disabled="form.$invalid || dataEdit.dataLoading"  value="Sign in!">
            <img ng-if="dataEdit.dataLoading" src="data:image/gif;base64,R0lGODlhEAAQAPIAAP///wAAAMLCwkJCQgAAAGJiYoKCgpKSkiH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQJCgAAACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkECQoAAAAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkECQoAAAAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkECQoAAAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQJCgAAACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQJCgAAACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAkKAAAALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==" />
        </div>
        
     
<!--        <input type="submit" name="submit" id="submit" value="Sign in!" /> -->
     
     </form>
     
     <div class="half"><a href="#">Forgot your password?</a></div>
    
    </div>
    
  </div>

<!-- Javascript -->
</body>
</html>