
<!DOCTYPE html>
<html lang="en">
<head>

<title>Online Privacy Policy Generator</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Form Builder</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#about">How to</a></li>
					<li class="active"><a href="createPolicy.html">Create
							Private Policy</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<div class="post_new"
				style="width: 70%; padding-bottom: 15px; border-bottom: solid 1px RGB(238, 238, 238);">
				<h4>Upload configure file</h4>
				<form action="postNew.do" method="post" name="post_new"
					enctype="multipart/form-data">
					<div class="upload">
						<input type="file" name="upload" />
					</div>
				</form>
			</div>

			<div class="questions_form" style="width: 70%; padding-bottom: 15px;">

				<form id="info">


					<div class="question">
						<h5>- Name of financial institute</h5>
						<div class="option">
							<input type="text" class="form-control" id="institute"
								placeholder="Institute Name">
						</div>
					</div>

					<div class="question">
						<h5>- Phone number of financial institute</h5>
						<div class="option">
							<input type="text" class="form-control" id="phone"
								placeholder="Phone Number">
						</div>
					</div>

					<div class="question">
						<h5>- Website of financial institute</h5>
						<div class="option">
							<input type="text" class="form-control" id="website"
								placeholder="Website">
						</div>
					</div>


					<div class="question" id="opt_out_option">
						<h5>- Do you provide opt-out option?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question1" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question1" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" style="display: none" id="mail_in_option">
						<h5>- Do you provide mail-in option?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question2" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question2" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="affiliate_option">
						<h5>- Do you want to include affiliate marketing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question3" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question3" value="no"> No
							</label>
						</div>
					</div>


					<div class="question">
						<h5>- What kind of customer's personal information you want
							to collect?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="income" name="personal_information"> Income
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="account_balance" name="personal_information"> Account Balance
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="payment_history" name="personal_information"> Payment History
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit_history" name="personal_information"> Credit History
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit_scores" name="personal_information"> Credit Scores
							</label>
						</div>
					</div>

					<div class="question" id="reason_q1">
						<h5>- Do you share customers' information for your everyday
							business purposes?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question4" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question4" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q1_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question5" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question5" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q2">
						<h5>- Do you share customers' information for your marketing
							purposes?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question6" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question6" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q2_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question7" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question7" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q3">
						<h5>- Do you share customers' information for joint marketing
							with other financial companies?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question8" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question8" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q3_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question9" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question9" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q4">
						<h5>- Do you share customers' information for your affiliates
							everyday business purposes? (Information about customers'
							transactions and experiences)</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question10" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question10" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q4_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question11" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question11" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q5">
						<h5>- Do you share customers' information for your affiliates
							everyday business purposes? (Information about customers'
							creditworthiness)</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question12" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question12" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q5_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question13" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question13" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q6" style="display: none">
						<h5>- Do you share customers' information for your affiliates
							to market to customers?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question14" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question14" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q6_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question15" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question15" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q7">
						<h5>- Do you share customers' information for your
							nonaffiliates to market to customers?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question16" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question16" value="no"> No
							</label>
						</div>
					</div>

					<div class="question" id="reason_q7_follow" style="display: none">
						<h5>- Do you allow customer to limit this sharing?</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question17" value="yes"> Yes
							</label> <label class="radio-line"> <input type="radio"
								name="question17" value="no"> No
							</label>
						</div>
					</div>


					<div class="question">
						<h5>- Under what scenario you will collect information?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="other_information"> Open Account
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="other_information"> Deposit Money
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="other_information"> Pay Bills
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="apply_for_loan" name="other_information"> Apply for Loan
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="use_card" name="other_information"> Use Debit or Credit Card
							</label>
						</div>
					</div>

					<div class="question">
						<h5>- Who is providing this notice?</h5>
						<div class="option">
							<input type="text" class="form-control" id="who"
								placeholder="Who you are">
						</div>
					</div>

					<div class="question">
						<h5>- How do you protect customer's personal information?</h5>
						<div class="option">
							<input type="text" class="form-control" id="how"
								placeholder="What you do">
						</div>
					</div>

					<div class="question" id="what_we_do_question">
						<h5>- You will collect informaton from:</h5>
						<div class="option">
							<label class="radio-line"> <input type="radio"
								name="question18" value="other_company"> Other companies
							</label> <label class="radio-line"> <input type="radio"
								name="question18" value="others"> others such as credit
								bureaus, affliates, or other companies
							</label>
						</div>
					</div>

					<div class="question">
						<h5>- Affliates Defination</h5>
						<div class="option">
							<input type="text" class="form-control" id="affliates_defination"
								placeholder="Affliates Defination">
						</div>
					</div>

					<div class="question">
						<h5>- Nonaffliates Defination</h5>
						<div class="option">
							<input type="text" class="form-control" id="nonaffliates_defination"
								placeholder="Nonaffliates Defination">
						</div>
					</div>

					<div class="question">
						<h5>- Joint Marketing Defination</h5>
						<div class="option">
							<input type="text" class="form-control" id="joint_marketing_defination"
								placeholder="Joint Marketing Defination">
						</div>
					</div>

					<div class="question">
						<h5>- Other Information</h5>
						<div class="option">
							<input type="text" class="form-control" id="additional_note"
								placeholder="Other Information">
						</div>
					</div>
					
					  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <c:if test="${configuration !=null}">
 <input type="hidden" id="content" value="${configuration}" />
 </c:if>

					<button type="button" class="btn btn-lg btn-primary"
						onclick="getFormData()" style="margin-top: 20px;">Generate
						Policy</button>

				</form>
			</div>
		</div>

	</div>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/form.js"></script>
</body>
</html>
