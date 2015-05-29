<%@page import="test.NoticeData"%>
<%@ page import="test.FormData"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>

<title>Online Privacy Policy Generator</title>

<!-- Bootstrap core CSS -->
<link href="css/common.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">


<%
	NoticeData formdata = (NoticeData) request.getAttribute("formdata");
%>

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
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#about">How to</a></li>
					<li><a href="createPolicy.html">Create Private Policy</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">
		<div id="todownload">
			<div class="prepend-top-10px">
				<table border="0" cellspacing="0" cellpadding="0"
					class="blueGrayTable margin-0px clear">
					<thead>
						<tr>
							<th class="borderBottom-bfbfbf width-115px">FACTS</th>
							<th class="borderBottom-bfbfbf borderLeft-bfbfbf">WHAT DOES
								${formdata.getInstitute()} DO WITH YOUR PERSONAL INFORMATION?</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="width-115px borderBottom-bfbfbf">Why?</th>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Financial
								companies choose how they share your personal information.
								Federal law gives consumers the right to limit some but not all
								sharing. Federal law also requires us to tell you how we
								collect, share, and protect your personal information. Please
								read this notice carefully to understand what we do.</td>
						</tr>
						<tr>
							<th class="width-115px borderBottom-bfbfbf">What?</th>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">The types
								of personal information we collect and share depend on the
								product or service you have with us. This information can
								include:

								<ul class="mortgageList prepend-top-5px margin-0px">
									<li>Social Security number</li>
									<%
										if (formdata.getPersonal_information().size() <= 5) {
											for (int i = 0; i < formdata.getPersonal_information().size(); i++) {
									%>
												<li><%=formdata.getPersonal_information().get(i)%></li>
									<%
											}
										} else {
											int i = 0;
											for (; i < 5; i++) {
									%>
												<li><%=formdata.getPersonal_information().get(i)%></li>
									<% 			
											}
											for (; i < formdata.getPersonal_information().size(); i++) {
									%>
												<li class="hidden_option" style="display:none;"><%=formdata.getPersonal_information().get(i)%> </li>			
									<%
											}
									%>
												<li> <a href="#" id="full_list"> full list </a> </li>  
									<%
										}
									%>



								</ul>
							</td>
						</tr>
						<tr>
							<th class="width-115px">How?</th>
							<td class="borderLeft-bfbfbf">All financial companies need
								to share customers&rsquo; personal information to run their
								everyday business. In the section below, we list the reasons
								financial companies can share their customers&rsquo; personal
								information; the reasons ${formdata.getInstitute()} chooses to
								share; and whether you can limit this sharing.</td>
						</tr>
					</tbody>
				</table>
			</div>



			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf">Reasons we can share your
								personal information</th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf">Does
								${formdata.getInstitute()} share?</th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf">Can you
								limit this sharing?</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For our
									everyday business purposes</strong>&mdash; such as to process your
								transactions, maintain your account(s), respond to court orders
								and legal investigations, or report to credit bureaus</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getEverydaybusiness()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_everydaybusiness()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For our
									marketing purposes</strong> &mdash; to offer our products and services
								to you</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getMarketing()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_marketing()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For joint
									marketing with other financial companies</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getJoint_marketing()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_joint_marketing()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For our
									affiliates' everyday business purposes</strong> &mdash; information
								about your transactions and experiences</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getAffiliates_transactions()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_affiliates_transactions()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For our
									affiliates' everyday business purposes</strong> &mdash; information
								about your creditworthiness</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getAffiliates_creditworthiness()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_affiliates_creditworthiness()}</td>
						</tr>
						<tr>
							<td class=""><strong>For nonaffiliates to market to
									you</strong></td>
							<td class="borderLeft-bfbfbf">${formdata.getNonaffiliates_to_market()}<sup
								class="font-14px">*</sup></td>
							<td class="borderLeft-bfbfbf">${formdata.getLimit_nonaffiliates_to_market()}</td>
						</tr>
					</tbody>
				</table>
			</div>

<<<<<<< HEAD
			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
=======
		<div class="prepend-top-10px">
			<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td class=" borderBottom-bfbfbf"><p>
							<strong>To limit our sharing</strong>
						</p></td>
					<td class="borderLeft-bfbfbf borderBottom-bfbfbf"><ul
							class="generalList prepend-top-5px margin-0px">
							<li>Call ${formdata.getPhone()}&mdash; our menu will prompt you
								through your choice or</li>
							<li>Visit us online: <a
								title="http://www.usbank.com/privacy" href="${formdata.getWebsite()}">${formdata.getWebsite()}</a>
								and tell us your preference on the "Exercise Your Privacy
								Choice" page.
							</li>
						</ul>
						<p class="prepend-top-10px">
							<strong>Please note:</strong> If you are a <em>new customer</em>,
							we can begin sharing your information ${formdata.getDuration()} days from the date we
							sent this notice. When you are <em>no longer</em> our customer,
							we continue to share your information as described in this
							notice. However, you can contact us at any time to limit our
							sharing.
						</p></td>
				</tr>
				<tbody>
>>>>>>> origin/master
					<tr>
						<td class=" borderBottom-bfbfbf"><p>
								<strong>To limit our sharing</strong>
							</p></td>
						<td class="borderLeft-bfbfbf borderBottom-bfbfbf"><ul
								class="generalList prepend-top-5px margin-0px">
								<li>Call ${formdata.getPhone()}&mdash; our menu will prompt
									you through your choice or</li>
								<li>Visit us online: <a
									title="http://www.usbank.com/privacy"
									href="${formdata.getWebsite()}">${formdata.getWebsite()}</a>
									and tell us your preference on the "Exercise Your Privacy
									Choice" page.
								</li>
							</ul>
							<p class="prepend-top-10px">
								<strong>Please note:</strong> If you are a <em>new customer</em>,
								we can begin sharing your information 30 days from the date we
								sent this notice. When you are <em>no longer</em> our customer,
								we continue to share your information as described in this
								notice. However, you can contact us at any time to limit our
								sharing.
							</p></td>
					</tr>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf"><p>
									<strong>To limit our direct marketing</strong>
								</p></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf"><p>
									<strong>Please note:</strong> We may contact our existing
									customers by mail, telephone, or email to offer additional
									financial products or services including products and services
									offered by nonaffiliates that we believe may be of interest to
									you. You may direct us not to send you such offers.
								</p>
								<ul class="mortgageList prepend-top-10px margin-0px">
									<li>To limit our direct marketing to you by mail or
										telephone, please call ${formdata.getPhone()}--our menu will
										prompt you through your choices, or visit us online: <a
										title="http://www.usbank.com/privacy"
										href="/privacy/index.html">http://www.usbank.com/privacy</a>
										and tell us your preference on the "Exercise Your Privacy
										Choice" page.
									</li>
									<li>To limit our direct marketing to you by e-mail, visit
										us online: <a title="http://www.usbank.com/privacy"
										href="${formdata.getWebsite()}">${formdata.getWebsite()}</a>
										and tell us your preference on the "Email Preferences" page.
									</li>
								</ul></td>
						</tr>
						<tr>
							<td class=""><p>
									<strong>Questions?</strong>
								</p></td>
							<td class="borderLeft-bfbfbf"><p>Call
									${formdata.getPhone()} or go to ${formdata.getWebsite()}</p></td>
						</tr>
					</tbody>
				</table>
			</div>

<<<<<<< HEAD
			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf"><p>Who we are</p></th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=""><p>
									<strong>Who is providing this notice?</strong>
								</p></td>
							<td class="borderLeft-bfbfbf"><p>Companies with
									${formdata.getInstitute()} and other affiliates. Please see
									below for a list of other affiliates that do not have a
									getInstitute() name.</p>
								<p>${formdata.getWho()}</p></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf"><strong>What we do</strong></th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf">&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>How does
									${formdata.getInstitute()} protect my personal information?</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">To protect
								your personal information from unauthorized access and use, we
								use security measures that comply with federal law. These
								measures include computer safeguards and secured files and
								buildings. ${formdata.getHow()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>How does
									${formdata.getInstitute()} collect my personal information?</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">We collect
								your personal information, for example, when you
								<ul class="mortgageList prepend-top-5px margin-0px">
									<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
									<c:forEach var="item"
										items="${formdata.getOther_information()}">
										<li>${item}</li>
									</c:forEach>
									<li>tell us about your investment or retirement portfolio</li>
								</ul> We also collect your personal information from others, such as
								credit bureaus, affiliates, or other companies.
							</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>Why can't
									I limit all sharing?</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Federal
								law gives you the right to limit only
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li>sharing for affiliates' everyday business
										purposes&mdash;information about your creditworthiness</li>
									<li>affiliates from using your information to market to
										you</li>
									<li>sharing for nonaffiliates to market to you</li>
								</ul> State laws and individual companies may give you additional
								rights to limit sharing. See below for more on your rights under
								state law.
							</td>
						</tr>
						<tr>
							<td class=""><strong>What happens when I limit
									sharing for an account I hold jointly with someone else?</strong></td>
							<td class="borderLeft-bfbfbf">Your choices will apply
								individually&mdash;unless you tell us otherwise.</td>
						</tr>
					</tbody>
				</table>
			</div>
=======
		<div class="prepend-top-10px">
			<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
				cellspacing="0">
				<thead>
					<tr>
						<th class=" borderBottom-bfbfbf"><p>Who we are</p></th>
						<th class="borderLeft-bfbfbf borderBottom-bfbfbf"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class=""><p>
								<strong>Who is providing this notice?</strong>
							</p></td>
						<td class="borderLeft-bfbfbf"><p>Companies with ${formdata.getInstitute()} and other affiliates. Please see
								below for a list of other affiliates that do not have a ${formdata.getInstitute()} name.</p>
							<p>
								${formdata.getWho()}
							</p></td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="prepend-top-10px">
			<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
				cellspacing="0">
				<thead>
					<tr>
						<th class=" borderBottom-bfbfbf"><strong>What we do</strong></th>
						<th class="borderLeft-bfbfbf borderBottom-bfbfbf">&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class=" borderBottom-bfbfbf"><strong>How does
								${formdata.getInstitute()} protect my personal information?</strong></td>
						<td class="borderLeft-bfbfbf borderBottom-bfbfbf">To protect
							your personal information from unauthorized access and use, we
							use security measures that comply with federal law. These
							measures include computer safeguards and secured files and
							buildings. In addtion, ${formdata.getHow()}</td>
					</tr>
					<tr>
						<td class=" borderBottom-bfbfbf"><strong>How does
								${formdata.getInstitute()} collect my personal information?</strong></td>
						<td class="borderLeft-bfbfbf borderBottom-bfbfbf">We collect
							your personal information, for example, when you
							<ul class="mortgageList prepend-top-5px margin-0px">
								<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
                                   <c:forEach var="item" items="${formdata.getOther_information()}">
                                     <li>${item}</li>
                                   </c:forEach>
								<li>tell us about your investment or retirement portfolio</li>
							</ul> We also collect your personal information from <c:forEach var="item" items="${formdata.getOther_information()}">
                                     <li>${item}</li>
                                   </c:forEach>
						</td>
					</tr>
					<tr>
						<td class=" borderBottom-bfbfbf"><strong>Why can't I
								limit all sharing?</strong></td>
						<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Federal law
							gives you the right to limit only
							<ul class="mortgageList prepend-top-5px margin-0px">
								<li>sharing for affiliates' everyday business
									purposes&mdash;information about your creditworthiness</li>
								<li>affiliates from using your information to market to you</li>
								<li>sharing for nonaffiliates to market to you</li>
							</ul> State laws and individual companies may give you additional
							rights to limit sharing. See below for more on your rights under
							state law.
						</td>
					</tr>
					<tr>
						<td class=""><strong>What happens when I limit
								sharing for an account I hold jointly with someone else?</strong></td>
						<td class="borderLeft-bfbfbf">Your choices will apply
							individually&mdash;unless you tell us otherwise.</td>
					</tr>
				</tbody>
			</table>
		</div>
>>>>>>> origin/master

			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf">Definitions</th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf">&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>Affiliates</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Companies
								related by common ownership or control. They can be financial
								and nonfinancial companies.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>Our affiliates include companies with a U.S.
											Bank and U.S. Bancorp name; financial companies such as <br />U.S.
											Bank National Association and U.S. Bancorp Investments, Inc.
									</em></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>Nonaffiliates</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Companies
								not related by common ownership or control. They can be
								financial and nonfinancial companies.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>${formdata.getInstitute()} does not share
											with nonaffiliates so they can market to you</em></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class=""><strong>Joint marketing</strong></td>
							<td class="borderLeft-bfbfbf">A formal agreement between
								nonaffiliated financial companies that together market financial
								products or services to you.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>${formdata.getInstitute()} doesn't jointly
											market</em></li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf">Other important information</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf">You may have other privacy
								protections under applicable state laws. To the extent these
								state laws apply, we will comply with them when we share
								information about you.</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For
									California residents:</strong> In accordance with California law, we
								will not share information we collect about you with companies
								outside of our corporate family, except as permitted by law,
								including, for example, with your consent or to service your
								account. We will limit sharing among our companies to the extent
								required by California law.</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For
									Vermont residents:</strong> In accordance with Vermont law, we will not
								share information we collect about you with companies outside of
								our corporate family, except as permitted by law, including, for
								example with your consent or to service your account. We will
								not share information about your creditworthiness within our
								corporate family except with your authorization or consent, but
								we may share information about our transactions or experiences
								with you within our corporate family without your consent.</td>
						</tr>
						<tr>
							<td class=""><strong>For Nevada residents:</strong> We may
								contact our existing customers by telephone to offer additional
								financial products that we believe may be of interest to you.
								You have the right to opt out of these calls by adding your name
								to our internal do-not-call list. To opt out of these calls, or
								for more information about your opt out rights, please contact
								our customer service department. You can reach us by calling
								800-USBANKS (800-872-2657), clicking the &ldquo;Email Us&rdquo;
								link at usbank.com/privacy, or writing to P.O. Box 64490, St.
								Paul, MN 55164. You are being provided this notice under Nevada
								state law. In addition to contacting ${formdata.getInstitute()},
								Nevada residents can contact the Nevada Attorney General for
								more information about your opt out rights by calling
								702-486-3132, emailing aginfo@ag.nv.gov, or by writing to: <br />Office
								of the Attorney General, Nevada Department of Justice, Bureau of
								Consumer Protection 100 North Carson Street, Carson City, NV
								89701-4717</td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr>
							<th class=" borderBottom-bfbfbf"><p>
									<a name="affiliates"></a>Additional U.S. Bancorp affiliates
								</p></th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf"></th>
							<th class="borderLeft-bfbfbf borderBottom-bfbfbf"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class=" borderBottom-bfbfbf"><p>The Miami Valley
									Insurance Company</p></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf"><p>Mississippi
									Valley Company</p></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf"><p>Elan
									Life Insurance Company</p></td>
						</tr>
						<tr>
							<td class=""><p>Red Sky Risk Services, LLC</p></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="prepend-top-10px">
				<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td class=""><p class="prepend-top-0px">
								<sup class="font-14px">*</sup>Please keep in mind that, as
								permitted by applicable law, if you have a private label credit
								card account with us, we share information about you with our
								financial or retail partners in connection with maintaining and
								servicing your account, including for that financial or retail
								partner to market to you. Federal law does not give you the
								right to limit this sharing.
							</p></td>
					</tr>
					</tbody>
				</table>

			</div>
		</div>
		<input type="hidden" id="toshow" value="${formJson}" />
		<button type="button" class="btn btn-info" onclick="download()"
			style="margin-top: 20px;">Download Notice</button>
		<button type="button" class="btn btn-info" onclick="configuration()"
			style="margin-top: 20px;">Download configuration file</button>
	</div>



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/form.js"></script>

</body>