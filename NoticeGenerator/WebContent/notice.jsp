<!DOCTYPE html>
<html>
<head>
<script>
function download(){
	var file = document.getElementById("notice").innerHTML;
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "download.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type","hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", file);
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();		
}

function configuration(){
	var formData = new Object();
	formData.institute = document.getElementById("institute").innerHTML;
	formData.phone = document.getElementById("phone").innerHTML;
	formData.website = document.getElementById("website").innerHTML;
	console.log(formData);
	
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "configuration.do");

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
 <div id="notice">
 <h2>Online Policy Notice Generator</h2>

 <ul>
  <li>Please type in the name of your company:<br>
    <div id="institute">${formdata.getInstitute()}</div>
  </li>  
  <li>Do you share customer's information for your everyday business purposes?<br>
    <div id="phone">${formdata.getPhone()}</div>
  </li>
  <li>If yes, can customer limit this kind of sharing?<br>
    <div id="website">${formdata.getWebsite()}</div>
  </li>
 </ul>
 </div>
 <button name="action" value="download" onclick="download()"> download notice</button>
 <button name="action" value="download" onclick="configuration()"> download configuration file</button>  
</body>
</html>