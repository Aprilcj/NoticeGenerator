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
							<td class=" borderBottom-bfbfbf"><strong>For <a herf="#joint"> joint
									marketing </a> with other financial companies</strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getJoint_marketing()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_joint_marketing()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For <a herf="#affilia">our
									affiliates'</a> everyday business purposes</strong> &mdash; information
								about your transactions and experiences</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getAffiliates_transactions()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_affiliates_transactions()}</td>
						</tr>
						<tr>
							<td class=" borderBottom-bfbfbf"><strong>For <a herf="#affilia">our
									affiliates'</a> everyday business purposes</strong> &mdash; information
								about your creditworthiness</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getAffiliates_creditworthiness()}</td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">${formdata.getLimit_affiliates_creditworthiness()}</td>
						</tr>
						<tr>
							<td class=""><strong>For <a herf="#nonaffilia">nonaffiliates </a> to market to
									you</strong></td>
							<td class="borderLeft-bfbfbf">${formdata.getNonaffiliates_to_market()}<sup
								class="font-14px">*</sup></td>
							<td class="borderLeft-bfbfbf">${formdata.getLimit_nonaffiliates_to_market()}</td>
						</tr>
					</tbody>
				</table>
			</div>

		<div class="prepend-top-10px">
			<table class="margin-0px blueGrayTable" border="0" cellpadding="0"
				cellspacing="0">
				<tbody>
				<%
					if (formdata.isLimit()) {
				%>
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
										href="${formdata.getWebsite()}">${formdata.getWebsite()}</a>
										and tell us your preference on the "Exercise Your Privacy
										Choice" page.
									</li>
								</ul></td>
						</tr>
						<%} %>
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
							</ul> We also collect your personal information from 
								   <%
									   for (int i = 0; i < formdata.getWhere_to_collect().size() - 1; i++) {
									%>
												<%=formdata.getWhere_to_collect().get(i)%> or
									<% } %>
									<%=formdata.getWhere_to_collect().get(formdata.getWhere_to_collect().size() - 1)%>.
									
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
						<tr > 
							<td class=" borderBottom-bfbfbf"><strong><a id = "affilia">Affiliates</a></strong></td> 
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Companies
								related by common ownership or control. They can be financial
								and nonfinancial companies.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>${formdata.getAffliates_definition()}
									</em></li>
								</ul>
							</td>
						</tr>
						<tr >
							<td class=" borderBottom-bfbfbf"><strong><a id = "nonaffilia">Nonaffiliates</a></strong></td>
							<td class="borderLeft-bfbfbf borderBottom-bfbfbf">Companies
								not related by common ownership or control. They can be
								financial and nonfinancial companies.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>${formdata.getNonaffliates_definition()}</em></li>
								</ul>
							</td>
						</tr>
						<tr >
							<td class=""><strong><a id = "joint">Joint marketing</a></strong></td>
							<td class="borderLeft-bfbfbf">A formal agreement between
								nonaffiliated financial companies that together market financial
								products or services to you.
								<ul class="mortgageList prepend-top-5px margin-0px">
									<li><em>${formdata.getJoint_marketing_definition()}</em></li>
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
							<td class=" borderBottom-bfbfbf">${formdata.getAdditional_note()}</td>
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