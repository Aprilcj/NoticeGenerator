$(function() {
	var opt_out_option;
	$('#opt_out_option input[type=radio]').change(function() {
		opt_out_option = $(this).val();
		if (opt_out_option == "Yes") {
			$('#mail_in_option').show("fast");
		} else {
			$('#mail_in_option').hide("fast");
		}
	});

	$('#affiliate_option input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "Yes") {
			$('#reason_q6').show("fast");
		} else {
			$('#reason_q6').hide("fast");
		}
	});

	$('#reason_q1 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "Yes" && opt_out_option == "Yes") {
			$('#reason_q1_follow').show("fast");
		} else {
			$('#reason_q1_follow').hide("fast");
		}
	});

	$('#reason_q2 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "Yes" && opt_out_option == "Yes") {
			$('#reason_q2_follow').show("fast");
		} else {
			$('#reason_q2_follow').hide("fast");
		}
	});

	$('#reason_q3 input[type=radio]').change(function() {
		var option = $(this).val();
		if (option == "Yes" && opt_out_option == "Yes") {
			$('#reason_q3_follow').show("fast");
		} else {
			$('#reason_q3_follow').hide("fast");
		}
	});

	$('#reason_q4 input[type=radio]' && opt_out_option == "Yes").change(function() {
		var option = $(this).val();
		if (option == "Yes") {
			$('#reason_q4_follow').show("fast");
		} else {
			$('#reason_q4_follow').hide("fast");
		}
	});

	$('#reason_q5 input[type=radio]' && opt_out_option == "Yes").change(function() {
		var option = $(this).val();
		if (option == "Yes") {
			$('#reason_q5_follow').show("fast");
		} else {
			$('#reason_q5_follow').hide("fast");
		}
	});

	$('#reason_q6 input[type=radio]' && opt_out_option == "Yes").change(function() {
		var option = $(this).val();
		if (option == "Yes") {
			$('#reason_q6_follow').show("fast");
		} else {
			$('#reason_q6_follow').hide("fast");
		}
	});

	$('#reason_q7 input[type=radio]' && opt_out_option == "Yes").change(function() {
		var option = $(this).val();
		if (option == "Yes") {
			$('#reason_q7_follow').show("fast");
		} else {
			$('#reason_q7_follow').hide("fast");
		}
	});

	$('h5').hover(function() {
		var offset = $(this).offset();
		//var length = $(this).width() + offset.left;
		$(this).append('<span id="tips">haha</span>');
		$('#tips').fadeIn(200).addClass('showTooltip');
		$('#tips').css('left', offset.left + 'px');
	}, function() {
		$('#tips').fadeOut(200);
		$('#tips').remove();
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
				if (element.value == data[element.name]) {
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
				formData[element.name] = element.value;
			}
		} else if (element.type == "checkbox") {
			if (!formData[element.name]) {
				formData[element.name] = [];	
			};
			if (element.checked) {
				formData[element.name].push(element.value);
			};
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
