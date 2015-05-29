$(function() {

	var display = false;
	$('#full_list').click(function() {
		if (!display) {
			display = true;
			$('.hidden_option').show('fast');
		} else {
			display = false;
			$('.hidden_option').hide('fast');
		}
	});

	var opt_out_option;

	$('#what_purpose_limit_div input[type=checkbox]').each(function(index) {
		$(this).attr('disabled', true);
	});

	$('#what_purpose_div input[type=checkbox]')
			.change(
					function() {
						$('#what_purpose_div input[type=checkbox]')
								.each(
										function(index) {
											if ($(
													'#what_purpose_div input[type=checkbox]')
													.get(index).checked) {
												$(
														'#what_purpose_limit_div input[type=checkbox]')
														.get(index).disabled = false;
											} else {
												$(
														'#what_purpose_limit_div input[type=checkbox]')
														.get(index).disabled = true;
												$(
														'#what_purpose_limit_div input[type=checkbox]')
														.get(index).checked = false;
												var empty = true;
												$(
														'#what_purpose_limit_div input[type=checkbox]')
														.each(
																function(index) {
																	if ($(
																			'#what_purpose_limit_div input[type=checkbox]')
																			.get(
																					index).checked) {
																		empty = false;
																	}
																});

												if (!empty) {
													$('#opt_out_option').show(
															'fast');
													$('#duration').show('fast');
												} else {
													$('#opt_out_option').hide(
															'fast');
													$('#duration').hide('fast');
												}

											}

										});
					});

	$('#what_purpose_limit_div input[type=checkbox]')
			.change(
					function() {
						var empty = true;
						$('#what_purpose_limit_div input[type=checkbox]')
								.each(
										function(index) {
											if ($(
													'#what_purpose_limit_div input[type=checkbox]')
													.get(index).checked) {
												empty = false;
											}
										});

						if (!empty) {
							$('#joint_account').show('fast');
							$('#duration').show('fast');
							//$('#address').show('fast');
							$('#opt_out_option').show('fast');
						} else {
							$('#joint_account').hide('fast');
							$('#duration').hide('fast');
							$('#address').hide('fast');
							$('#opt_out_option').hide('fast');
						}
					});

	$('#opt_out_option input').change(function() {
		if ($('#mail_in_check_option').prop('checked')) {
			$('#address').show('fast');
		} else {
			$('#address').hide('fast');
		}

	});

	$('h5')
			.hover(
					function() {
						var offset = $(this).offset();
						// var length = $(this).width() + offset.left;
						if ($(this).attr('id') == 'what_des'
								|| $(this).attr('id') == 'when_des') {
							$(this)
									.append(
											'<span id="tips">At least select five options</span>');
						} else if ($(this).attr('id') == 'what_purpose_des') {
							$(this)
									.append(
											'<span id="tips">this option will limit the next option. If not one is selected, the next option is not optional</span>');
						} else if ($(this).attr('id') == 'what_purpose_limit_des') {
							$(this)
									.append(
											'<span id="tips">Select one of the following option means you will provide the opt-out option</span>');
						} else if ($(this).attr('id') == 'duration_des') {
							$(this)
									.append(
											'<span id="tips">Insert a number that is 30 or greater in the space marked [30].</span>');
						} else {
							return;
						}

						$('#tips').fadeIn(200).addClass('showTooltip');
						$('#tips').css('left', offset.left + 'px');
					}, function() {
						$('#tips').fadeOut(200);
						$('#tips').remove();
					});

	var configuration = document.getElementById("refillConfiguration");
	if (configuration) {
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

		$('#what_purpose_div input[type=checkbox]')
				.each(
						function(index) {
							if ($('#what_purpose_div input[type=checkbox]')
									.get(index).checked) {
								$(
										'#what_purpose_limit_div input[type=checkbox]')
										.get(index).disabled = false;
							} else {
								$(
										'#what_purpose_limit_div input[type=checkbox]')
										.get(index).disabled = true;
								$(
										'#what_purpose_limit_div input[type=checkbox]')
										.get(index).checked = false;
								var empty = true;
								$(
										'#what_purpose_limit_div input[type=checkbox]')
										.each(
												function(index) {
													if ($(
															'#what_purpose_limit_div input[type=checkbox]')
															.get(index).checked) {
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

							}

						});
	}

});

function checkNumber() {
	var phone = $('#phone').val();
	if (phone == "") {
		return true;
	}

	var intReg = /^\d{10}$/;
	if (!intReg.test(phone)) {
		console.log("Please enter a valid Number.");
		return false;
	} else {
		return true;
	}

}

function checkWebsite() {
	var str = $('#website').val();
	if (str == "") {
		return true;
	}
	var pattern = new RegExp('^(https?:\\/\\/)?' + // protocol
	'((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // domain name
	'((\\d{1,3}\\.){3}\\d{1,3}))' + // OR ip (v4) address
	'(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // port and path
	'(\\?[;&a-z\\d%_.~+=-]*)?' + // query string
	'(\\#[-a-z\\d_]*)?$', 'i'); // fragment locator
	if (!pattern.test(str)) {
		console.log("Please enter a valid URL.");
		return false;
	} else {
		return true;
	}
}

function checkWhat() {
	var count = 0;
	$('#what_to_collect input[type=checkbox]').each(function(index) {
		if (this.checked) {
			count++
		}
	});

	if (count < 5) {
		console.log('Less than five options are selected');
		return false;
	} else {
		return true;
	}
}

function checkWhen() {
	var count = 0;
	$('#when_to_collect input[type=checkbox]').each(function(index) {
		if (this.checked) {
			count++
		}
	});

	if (count < 5) {
		console.log('Less than five options are selected');
		return false;
	} else {
		return true;
	}
}

function missingFieldCheck() {
	var msg = "";
	$('.question input[type=text]').each(
			function(index) {
				if (this.value == "") {
					msg += "<h5>"
							+ $(this).parent().prev().text().replace("?", "")
							+ " part is missing.</h5> <br/>";
				}

			});

	var count = 0;
	$('#what_to_collect input').each(function(index) {
		if (this.checked) {
			count++;
		}
	});
	if (count == 0) {
		msg += "<h5>- What kind of customer's personal information you want to collect part is missing.</h5><br/>";
	}

	var count = 0;
	$('#where_to_collect input').each(function(index) {
		if (this.checked) {
			count++;
		}
	});
	if (count == 0) {
		msg += "<h5>- When will you collect information part is missing.</h5><br/>";
	}

	var count = 0;
	$('#when_to_collect input').each(function(index) {
		if (this.checked) {
			count++;
		}
	});
	if (count == 0) {
		msg += "<h5>- Where will you collect informaton from part is missing.</h5><br/>";
	}

	var count = 0;
	$('#what_purpose input').each(function(index) {
		if (this.checked) {
			count++;
		}
	});
	if (count == 0) {
		msg += "<h5>- What purpose do you share information part is missing.</h5><br/>";
	}

	console.log(msg);
	return msg;
}

function getFormData() {

	var warning = "";
	// first check all the fields
	if (!checkNumber()) {
		warning += "<h5>- Number format is not correct<h5><br/>";
	}
	if (!checkWebsite()) {
		warning += "<h5>- Website format is not correct<h5><br/>";
	}

	if (!checkWhat()) {
		warning += "<h5>- What kind of customer's personal information you want to collect part should at least select five options<h5><br/>";
	}

	if (!checkWhen()) {
		warning += "<h5>- When will you collect information part should at least select five options<h5><br/>";
	}

	warning += missingFieldCheck();
	$('.warning_msg').html(warning);

	if (warning != "") {
		return;
	}

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
	var file = document.documentElement.innerHTML;
	var form = document.createElement("form");
	form.setAttribute("method", "post");
	form.setAttribute("action", "download.do");

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "content");
	hiddenField.setAttribute("value", encodeURIComponent(file));
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}

function configuration() {
	var data = document.getElementById("toshow").value;

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
