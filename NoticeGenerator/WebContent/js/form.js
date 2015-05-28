$(function() {
	var opt_out_option;

	$('#what_purpose_limit_div input[type=checkbox]').each(function(index) {
		$(this).attr('disabled', true);
	});

	$('#what_purpose_div input[type=checkbox]').change(function() {
		$('#what_purpose_div input[type=checkbox]').each(function(index) {
			if($('#what_purpose_div input[type=checkbox]').get(index).checked) {
				$('#what_purpose_limit_div input[type=checkbox]').get(index).disabled = false;
			}	
		});	
	});
	
	
	$('#what_purpose_limit_div input[type=checkbox]').change(function() {
		var empty = true;
		$('#what_purpose_limit_div input[type=checkbox]').each(function(index) {
			if($('#what_purpose_limit_div input[type=checkbox]').get(index).checked) {
				empty = false;
			}	
		});	
		
		if (!empty) {
			$('#opt_out_option').show('fast');
			$('#duration').show('fast');
		} else {
			$('#opt_out_option').hide('fast');
			$('#duration').hide('fast');
		}
	});
	

	$('h5').hover(function() {
		var offset = $(this).offset();
		// var length = $(this).width() + offset.left;
		$(this).append('<span id="tips">haha</span>');
		$('#tips').fadeIn(200).addClass('showTooltip');
		$('#tips').css('left', offset.left + 'px');
	}, function() {
		$('#tips').fadeOut(200);
		$('#tips').remove();
	});

	var configuration = document.getElementById("refillConfiguration");
	console.log("shit");
	if (configuration) {
		console.log("hahha");
		var data = JSON.parse(decodeURIComponent(configuration.value));
		console.log(data);

		var form = document.forms["info"];
		for ( var i = 0; i < form.elements.length; ++i) {
			var element = form.elements[i];
			console.log(element);
			if (element.type == "text") {
				element.value = data[element.id];
			} else if (element.type == "radio") {
				if (element.value == data[element.name]) {
					element.checked = true;
				} else {
					element.checked = false;
				}
			} else if (element.type == "checkbox") {
				if (contains(data[element.name], element.value)) {
					element.checked = true;
				} else {
					element.checked = false;
				}
				;
			}
		}
	}

});

function getFormData() {
	var formData = new Object();

	var form = document.forms["info"];
	for ( var i = 0; i < form.elements.length; ++i) {
		var element = form.elements[i];
		console.log(element);
		if (element.type == "text") {
			formData[element.id] = element.value;
		} else if (element.type == "radio") {
			if (element.checked == true) {
				formData[element.name] = element.value;
			}
		} else if (element.type == "checkbox") {
			if (!formData[element.name]) {
				formData[element.name] = [];
			}
			;
			if (element.checked) {
				formData[element.name].push(element.value);
			}
			;
		}
	}
	console.log(formData);

	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "notice-service.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", encodeURIComponent(JSON
			.stringify(formData)));
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}

function download() {
	var file = document.getElementById("notice").innerHTML;
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "download.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", file);
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}

function configuration() {
	var data = document.getElementById("toshow").value;
	console.log("data:");
	console.log(data);

	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "configuration.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", data);
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}

function contains(array, obj) {
	for ( var i = 0; array && i < array.length; i++) {
		if (array[i] === obj) {
			return true;
		}
		;
	}
	;
	return false;
}
