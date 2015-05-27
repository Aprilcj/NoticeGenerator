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

});
