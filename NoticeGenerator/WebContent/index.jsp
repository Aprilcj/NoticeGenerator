<!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
function getFormData() {
	var formData = new Object();
	formData.companyname = document.getElementById("companyname").value;
	formData.businesspurposes = document.getElementById("businesspurposes").value;
	formData.limitbusinessshare = document.getElementById("limitbusinessshare").value;
	console.log(formData);
	
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "notice-service.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type","hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", JSON.stringify(formData));
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();	
}
</script>
</head>
<body>
 <h2>Online Policy Notice Generator</h2>
 <button type="submit" name="action" value="upload"> upload previous notice</button>
<form>
 <ul>
  <li>Please type in the name of your company:<br>
     <input type="text" id="companyname">
  </li>  
  <li>Do you share customer's information for your everyday business purposes?<br>
     <input type="radio" id="businesspurposes" value="Yes"/> Yes
     <br>
     <input type="radio" id="businesspurposes" value="No"/> No
     <br>
  </li>
  <li>If yes, can customer limit this kind of sharing?<br>
     <input type="radio" id="limitbusinessshare" value="Yes"/> Yes
     <br>
     <input type="radio" id="limitbusinessshare" value="No"/> No
     <br>
  </li>
 </ul>
 </form>
 <button name="action" value="generator" onclick="getFormData()"> Generate Policy Notice</button> 

</body>
</html>