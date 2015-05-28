<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
			<div class="post_new">
				<ol class="breadcrumb" id="titlebar">
					<li>UPLOAD CONFIGURE FILE</li>
				</ol>
				<form method="post" action="uploadFile" name="post_new"
					enctype="multipart/form-data">
					<div class="upload">
						<input type="file" name="upload" />
					</div>
					<div>
						<input class="btn btn-info" type="submit" value="Upload" />
					</div>
				</form>
			</div>

			<div class="questions_form" style="width: 70%; padding-bottom: 15px;">

				<form id="info">


					<ol class="breadcrumb" id="titlebar">
						<li>INSTITUTE INFORMATION</li>
					</ol>
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

					<div class="question">
						<h5>- Who is providing this Notice?</h5>
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

					<div class="question">
						<h5>- Affliates definition</h5>
						<div class="option">
							<input type="text" class="form-control" id="affliates_definition"
								placeholder="Affliates definition">
						</div>
					</div>

					<div class="question">
						<h5>- Nonaffliates definition</h5>
						<div class="option">
							<input type="text" class="form-control"
								id="nonaffliates_definition"
								placeholder="nonaffliates definition">
						</div>
					</div>

					<div class="question">
						<h5>- Joint Marketing definition</h5>
						<div class="option">
							<input type="text" class="form-control"
								id="joint_marketing_definition"
								placeholder="Joint Marketing definition">
						</div>
					</div>

					<div class="question">
						<h5>- Other Information</h5>
						<div class="option">
							<input type="text" class="form-control" id="additional_note"
								placeholder="Other Information">
						</div>
					</div>

					<ol class="breadcrumb" id="titlebar">
						<li>COLLECTING CUSTOMER'S INFORMATION</li>
					</ol>

					<div class="question">
						<h5>- What kind of customer's personal information you want
							to collect?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="income" name="personal_information"> Income
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="account balances" name="personal_information">
								Account Balance
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="payment history" name="personal_information">
								Payment History
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit history" name="personal_information">
								Credit History
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit scores" name="personal_information">
								Transaction History
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit scores" name="personal_information">
								Credit Scores
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit scores" name="personal_information">
								Assets
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit scores" name="personal_information">
								Employment Information
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="credit scores" name="personal_information">
								Investment Experience
							</label>
						</div>
					</div>

					<div class="question">
						<h5>- When will you collect information?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="other_information"> Open
								Account
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="other_information"> Deposit
								Money
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="other_information"> Pay Bills
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="apply_for_loan" name="other_information"> Apply
								for Loan
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="use_card" name="other_information"> Use Debit or
								Credit Card
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="use_card" name="other_information"> Make Deposits
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="use_card" name="other_information"> Withdrawls from your Account
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="use_card" name="other_information"> Seek Advice about Investment
							</label>
											
						</div>
					</div>


					<div class="question">
						<h5>- Where will you collect informaton from?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="where_to_collect"> Other
								Companies
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="where_to_collect"> Credit
								Bureaus
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="where_to_collect"> Affiliates
							</label>
						</div>
					</div>


					<ol class="breadcrumb" id="titlebar">
						<li>SHARING CUSTOMER'S INFORMATION</li>
					</ol>


					<div class="question">
						<h5>- What purpose do you share information?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="what_purpose_sharing">
								Everyday Business
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="what_purpose_sharing">
								Marketing
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_sharing"> Joint
								Marketing with Other Financial Companies
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_sharing">
								Affiliates Everyday Business Purposes (Information about
								customers' transactions and experiences)
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_sharing">
								Affiliates Everyday Business Purposes (Information about
								customers' creditworthiness)
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_sharing">
								Nonaffiliates to Market to Customers
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_sharing">
								Affiliates to Market to Customers
							</label>
						</div>
					</div>


					<div class="question" id="what_purpose_limit_sharing">
						<h5>- Do you limit your sharing on the following purpose?
							(based on the last question)</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="what_purpose_limit_sharing">
								Everyday Business
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="what_purpose_limit_sharing">
								Marketing
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_limit_sharing">
								Joint Marketing with Other Financial Companies
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_limit_sharing">
								Affiliates Everyday Business Purposes (Information about
								customers' transactions and experiences)
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_limit_sharing">
								Affiliates Everyday Business Purposes (Information about
								customers' creditworthiness)
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_limit_sharing">
								Nonaffiliates to Market to Customers
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="what_purpose_limit_sharing">
								Affiliates to Market to Customers
							</label>
						</div>
					</div>

					<div class="question">
						<h5>- What opt-out option do you provide?</h5>
						<div class="option">
							<label class="checkbox-inline"> <input type="checkbox"
								value="open_account" name="mail_in_option"> Phone
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="deposit_money" name="mail_in_option"> Website
							</label> <label class="checkbox-inline"> <input type="checkbox"
								value="pay_bills" name="mail_in_option"> Mail-in
							</label>
						</div>
					</div>


					<div class="question">
						<h5>- How long do you limit the sharing information?</h5>
						<div class="option">
							<input type="text" class="form-control" id="how"
								placeholder="Sharing Duration">
						</div>
					</div>



					<c:if test="${configuration !=null}">
						<input type="hidden" id="refillConfiguration"
							value="${configuration}" />
					</c:if>

					<button type="button" class="btn btn-info" onclick="getFormData()"
						style="margin-top: 20px;">Generate Policy</button>

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
