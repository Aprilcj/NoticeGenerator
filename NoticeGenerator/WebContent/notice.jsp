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
</script>

</head>
<body>
 <div id="notice">
 <h2>Online Policy Notice Generator</h2>

 <ul>
  <li>Please type in the name of your company:<br>
     ${companyname}
  </li>  
  <li>Do you share customer's information for your everyday business purposes?<br>
     ${businesspurposes }
  </li>
  <li>If yes, can customer limit this kind of sharing?<br>
     ${limitbusinessshare}
  </li>
 </ul>
 </div>
 <button name="action" value="download" onclick="download()"> download</button> 
</body>
</html>