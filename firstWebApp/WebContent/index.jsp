<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Conference Room Booking</title>
<h2>Testing Web Page</h2>
<script type="text/javascript">
function validate()
{
	var name = document.getElementById("txt1").value;
	if(name == "")
	{
		alert("Please Enter Name");
	}
	var Department = document.getElementById("txt2").value;
	if(Department == "")
	{
		alert("Please Enter Dept");
	}
	var Purpose = document.getElementById("txt3").value;
	if(Purpose == "")
	{
		alert("Please Enter Purpose of Booking");
	}

	var Date = document.getElementById("txt4").value;
    var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
    if (Date == null || Date == "" || !pattern.test(Date)) 
    	{
    		alert("Please Select Valid Date");
    	}
}
</script>
</head>
<body>
<form>
<style>
table, th, td {
  border: .8px solid black;
}
</style>
<br> <br>
<table>
<tr><th>Name       :</th> <td><input type="text" id="txt1" name="txt1"></td> </tr>
<tr><th>Department :</th> <td><input type="text" id="txt2" Department="txt2"></td></tr>
<tr><th>Booking Purpose    :</th><td> <input type="text" id="txt3" Purpose="txt3"></td></tr>
<tr><th>Date       :</th><td> <input type="date" id="txt4" Date="txt4"></td></tr>
<tr><th>Time From   :</th> <td><input type="time" id="myTime1"> </td></tr>
<tr><th>Time To     :</th> <td><input type="time" id="myTime2"></td></tr>
<tr><th>No of persons:</th> <td><select><option value="two">2</option><option value="three">3</option>
<option value="two">4</option><option value="three">5</option>
<option value="two">6</option><option value="three">7</option>
<option value="two">8</option><option value="three">9</option> 
<option value="two">10</option><option value="three">11</option>
<option value="two">12</option><option value="three">13</option>
<option value="two">14</option><option value="three">15</option>
<option value="two">16</option><option value="three">17</option></select></td></tr>
<br><tr><th>Select Room</th><td><select><option value="volvo">Conference Room</option><option value="saab">Training Room</option> </select> </td></tr>
</table>
<br>
<input type="Button" id="btn1" value="SUBMIT" onclick ="validate()">
</form>
</body>
</html>