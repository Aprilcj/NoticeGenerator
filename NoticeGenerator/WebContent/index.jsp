<!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$( document ).ready(function() {
	var configuration = document.getElementById("content");
	console.log("shit");
	console.log(document.getElementById("companyname"));
	if(configuration){
		console.log("hahha");
		var data = JSON.parse(decodeURIComponent(configuration.value));
		console.log(data);
		
		var form = document.forms["info"];
		for(var i = 0; i < form.elements.length;++i){
			var element = form.elements[i];
			console.log(element);
			if(element.type == "text"){
				element.value = data[element.id];
			}else if(element.type == "radio"){
				if(element.value == data[element.id]){
					element.checked = true;
				}else{
					element.checked =false;
				}
			}
		}		
	}
});

function getFormData() {
	var formData = new Object();
	
	var form = document.forms["info"];
	for(var i = 0; i < form.elements.length;++i){
		var element = form.elements[i];
		console.log(element);
		if(element.type == "text"){
			formData[element.id]=element.value;
		}else if(element.type == "radio"){
			if(element.checked == true){
				formData[element.id] = element.value;
			}
		}
	}
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
 <form method="post" action="uploadFile" enctype="multipart/form-data">
 <input type="file" name="uploadFile" /> 
 <br/><br/> 
<input type="submit" value="Upload" />
 </form>
<form id="info">
 <ul>
  <li>Please type in the name of your company:<br>
     <input type="text" id="companyname">
  </li>  
  <li>Do you share customer's information for your everyday business purposes?<br>
     <input type="radio" id="businesspurposes" value="Yes"  /> Yes
     <br>
     <input type="radio" id="businesspurposes" value="No"/> No
     <br>
  </li>
  <li>If yes, can customer limit this kind of sharing?<br>
     <input type="radio" id="limitbusinessshare" value="Yes" /> Yes
     <br>
     <input type="radio" id="limitbusinessshare" value="No"/> No
     <br>
  </li>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <c:if test="${configuration !=null}">
 <input type="hidden" id="content" value="${configuration}" />
 </c:if>
 </ul>
 </form>
 
 <button name="action" value="generator" onclick="getFormData()"> Generate Policy Notice</button> 

</body>
</html>