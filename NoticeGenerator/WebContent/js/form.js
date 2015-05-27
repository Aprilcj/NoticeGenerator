$(function() {
	$('#opt_out_option input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#mail_in_option').show("fast");
		} else {
			$('#mail_in_option').hide("fast");
		}
	});

	$('#affiliate_option input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q6').show("fast");
		} else {
			$('#reason_q6').hide("fast");
		}
	});

	$('#reason_q1 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q1_follow').show("fast");
		} else {
			$('#reason_q1_follow').hide("fast");
		}
	});

	$('#reason_q2 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q2_follow').show("fast");
		} else {
			$('#reason_q2_follow').hide("fast");
		}
	});

	$('#reason_q3 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q3_follow').show("fast");
		} else {
			$('#reason_q3_follow').hide("fast");
		}
	});

	$('#reason_q4 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q4_follow').show("fast");
		} else {
			$('#reason_q4_follow').hide("fast");
		}
	});

	$('#reason_q5 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q5_follow').show("fast");
		} else {
			$('#reason_q5_follow').hide("fast");
		}
	});

	$('#reason_q6 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q6_follow').show("fast");
		} else {
			$('#reason_q6_follow').hide("fast");
		}
	});

	$('#reason_q7 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "yes") {
			$('#reason_q7_follow').show("fast");
		} else {
			$('#reason_q7_follow').hide("fast");
		}
	});

	var configuration = document.getElementById("content");
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
				if (element.value == data[element.id]) {
					element.checked = true;
				} else {
					element.checked = false;
				}
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
				formData[element.id] = element.value;
			}
		} else if (element.type == "checkbox") {
			if (element.checked == true) {
				formData[element.id] = element.value;
			}
		}
	}
	console.log(formData);

	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "notice-service.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", JSON.stringify(formData));
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}
