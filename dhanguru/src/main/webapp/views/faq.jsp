

<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>FAQ - Dhanguru</title>
		<!-- faq.jsp -->
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		
		<!-- spring mapping of resourses start -->
		<spring:url value="/resources/css/style.css" var="styleCss" />
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
		<!-- new -->
		<!-- <link rel="pingback" href="http://dpsnoida.in/xmlrpc.php" /> -->
		<!--[if lt IE 9]>
		<script src="http://dpsnoida.in/wp-content/themes/green-eye/js/html5.js" type="text/javascript"></script>
		<![endif]-->
		
		<link rel='stylesheet' id='green-style-css'  href='${styleCss}' type='text/css' media='all' />
		<style>
			a,.page_item
			{
				color:white;
			}
		</style>
		
		
		
		<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script>
		var myCenter=new google.maps.LatLng(51.508742,-0.120850);

		function initialize()
		{
			var mapProp = {
  				center:myCenter,
  				zoom:5,
  				mapTypeId:google.maps.MapTypeId.ROADMAP
  			};

			var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

			var marker=new google.maps.Marker({
  				position:myCenter,
  			});

			marker.setMap(map);
		}

		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
		
		
		
		
	
	</head>
<body>
<header>
    <nav class="navbar navbar-default" style="background-color:#0f8200;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index" style="color:#FFFFFF;">DHANGURU</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav m-menu">
                    <li class="page_item page-item-8 page_item_has_children">
                        <a href="${pageContext.request.contextPath}/aboutUs" style="color:#FFFFFF;">About Us</a>
                        <ul class="children">
                            <li class="page_item page-item-93"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/borrower">Borrower</a></li>
                            <li class="page_item page-item-84"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/lender">Lender</a></li>
                            <li class="page_item page-item-96"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/faq">Frequently Ask Questions</a></li>
                            <li class="page_item page-item-98"><a style="color:#0f8200;" style="color:#0f8200;" href="${pageContext.request.contextPath}/mgt">Board of Management</a></li>
                            <li class="page_item page-item-383"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/roles">Roles</a></li>
                        </ul>
                    </li>
                    <li class="page_item page-item-10 page_item_has_children">
                        <a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Academics</a>
                        <ul class='children'>
                            <li class="page_item page-item-13"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/terms">Terms &amp; Conditions</a></li>
                            <li class="page_item page-item-19"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/signUp">signUp</a></li>
                            <li class="page_item page-item-21"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/applyForLoan">Apply For Loan</a></li>
                            <li class="page_item page-item-15"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/msg">Msg</a></li>
                            <li class="page_item page-item-24"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Awards and Scholarships</a></li>
                            <li class="page_item page-item-26"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Counsellor Column</a></li>
                        </ul>
                    </li>
                    <li class="page_item page-item-40 page_item_has_children">
                        <a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Clubs &#038; SUPW</a>
                        <ul class='children'>
                            <li class="page_item page-item-42 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Debating Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-403"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Debating Club (Session 2013 &#8211; 14)</a></li>
                                    <li class="page_item page-item-401"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Debating Club (Session 2012 &#8211; 13)</a></li>
                                    <li class="page_item page-item-399"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Debating Club (more)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-44 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">DPSMUN</a>
                                <ul class='children'>
                                    <li class="page_item page-item-412"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">DPSMUN (Session 2012-13)</a></li>
                                    <li class="page_item page-item-410"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">DPSMUN (Session 2011-12)</a></li>
                                    <li class="page_item page-item-408"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">DPSMUN (More)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-47 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Environment Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-423"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Environment Club (Session 2013-14)</a></li>
                                    <li class="page_item page-item-424"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Environment Club (Session 2012-13)</a></li>
                                    <li class="page_item page-item-426"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Environment Club (Session 2011-12)</a></li>
                                    <li class="page_item page-item-427"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Environment Club (More)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-49 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Interact Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-310"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Interact Club (1)</a></li>
                                    <li class="page_item page-item-312"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Interact Club (2)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-56"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Astronomy Club</a></li>
                            <li class="page_item page-item-60 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Dramatics Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-302"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Dramatics Club (1)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-62"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Editorial Club</a></li>
                            <li class="page_item page-item-64 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Quiz Society</a>
                                <ul class='children'>
                                    <li class="page_item page-item-289"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Quiz Society (1)</a></li>
                                    <li class="page_item page-item-290"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Quiz Society (2)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-67 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">I Decide Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-276"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">I Decide Club ( 1 )</a></li>
                                    <li class="page_item page-item-277"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">I Decide Club ( 2 )</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-77 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Maths Club</a>
                                <ul class='children'>
                                    <li class="page_item page-item-269"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Maths Club (2012-13)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-69 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">SUPW</a>
                                <ul class='children'>
                                    <li class="page_item page-item-248"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">SUPW CLASS VII</a></li>
                                    <li class="page_item page-item-251"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">SUPW CLASS VIII</a></li>
                                    <li class="page_item page-item-253"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">SUPW CLASS IX</a></li>
                                    <li class="page_item page-item-255"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">SUPW CLASS X</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-79 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">e Spice</a>
                                <ul class='children'>
                                    <li class="page_item page-item-455"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">e Spice (Session 2010-11)</a></li>
                                    <li class="page_item page-item-453"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">e Spice (Session 2010-11)</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-82"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Word Weavers&#8217; Society</a></li>
                        </ul>
                    </li>
                    <li class="page_item page-item-111 page_item_has_children">
                        <a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Facilities</a>
                        <ul class='children'>
                            <li class="page_item page-item-113"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Our Campus</a></li>
                            <li class="page_item page-item-153 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Lab</a>
                                <ul class='children'>
                                    <li class="page_item page-item-155"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Math Lab</a></li>
                                    <li class="page_item page-item-157"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Social Sc. Lab</a></li>
                                    <li class="page_item page-item-159"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">German Lab</a></li>
                                    <li class="page_item page-item-161"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Computer Lab</a></li>
                                    <li class="page_item page-item-166"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Science Lab</a></li>
                                </ul>
                            </li>
                            <li class="page_item page-item-115"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Day Boarding</a></li>
                            <li class="page_item page-item-117"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Weekdays boarding</a></li>
                            <li class="page_item page-item-119"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Hostel</a></li>
                            <li class="page_item page-item-121"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Transport</a></li>
                            <li class="page_item page-item-125"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Smart Classes</a></li>
                            <li class="page_item page-item-175"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Science Park</a></li>
                            <li class="page_item page-item-178"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Library</a></li>
                            <li class="page_item page-item-232"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Sports</a></li>
                            <li class="page_item page-item-234"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Discovery Room</a></li>
                            <li class="page_item page-item-213"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Auditorium</a></li>
                            <li class="page_item page-item-215"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">A.V. Room</a></li>
                            <li class="page_item page-item-217"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Open-Air Theater</a></li>
                            <li class="page_item page-item-219"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Conference Room</a></li>
                            <li class="page_item page-item-221"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Seminar Room</a></li>
                        </ul>
                    </li>
                    <li class="page_item page-item-148 page_item_has_children">
                        <a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Achievements</a>
                        <ul class='children'>
                            <li class="page_item page-item-150"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Outstanding Achievements</a></li>
                            <li class="page_item page-item-169"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">April Achievements</a></li>
                            <li class="page_item page-item-185"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">May Achievements</a></li>
                            <li class="page_item page-item-187"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">June Achievements</a></li>
                            <li class="page_item page-item-189"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">July Achievements</a></li>
                            <li class="page_item page-item-191"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">August Achievements</a></li>
                            <li class="page_item page-item-195"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">October Achievements</a></li>
                            <li class="page_item page-item-199"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">November Achievements</a></li>
                            <li class="page_item page-item-201"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">December Achievements</a></li>
                            <li class="page_item page-item-202"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">January Achievements</a></li>
                            <li class="page_item page-item-204"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Feburary Achievements</a></li>
                        </ul>
                    </li>
                    <li class="page_item page-item-321 page_item_has_children">
                        <a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Session Info</a>
                        <ul class='children'>
                            <li class="page_item page-item-1056"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">ALUMNI</a></li>
                            <li class="page_item page-item-995"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">CURRENT NEWS</a></li>
                            <li class="page_item page-item-1172"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Olympiad Worksheet</a></li>
                            <li class="page_item page-item-1159"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORK SHEET</a></li>
                            <li class="page_item page-item-323"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">School Timings</a></li>
                            <li class="page_item page-item-376"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">School Holidays</a></li>
                            <li class="page_item page-item-385"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Bus Routes</a></li>
                            <li class="page_item page-item-515 page_item_has_children">
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Downloads</a>
                                <ul class='children'>
                                    <li class="page_item page-item-519 page_item_has_children">
                                        <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class I</a>
                                        <ul class='children'>
                                            <li class="page_item page-item-1036"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">ENGLISH WORKSHEET &#8211; (IEO) &#8211; 12</a></li>
                                            <li class="page_item page-item-523"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Worksheets for IMO, IEO and NSO</a></li>
                                        </ul>
                                    </li>
                                    <li class="page_item page-item-529"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class II</a></li>
                                    <li class="page_item page-item-532"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class III</a></li>
                                    <li class="page_item page-item-534 page_item_has_children">
                                        <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class IV</a>
                                        <ul class='children'>
                                            <li class="page_item page-item-689"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">CLASS &#8211; IV &#8211; SAMPLE PAPER</a></li>
                                            <li class="page_item page-item-546"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Datesheet for Half Yearly Exam</a></li>
                                            <li class="page_item page-item-542"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Half Yearly Exam Syllabus 2015-2016</a></li>
                                            <li class="page_item page-item-727"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORKSHEET &#8211; CLASS &#8211; IV</a></li>
                                            <li class="page_item page-item-790"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORKSHEET &#8211; CLASS &#8211; IV</a></li>
                                            <li class="page_item page-item-840"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORKSHEET &#8211; CLASS &#8211; IV</a></li>
                                        </ul>
                                    </li>
                                    <li class="page_item page-item-536 page_item_has_children">
                                        <a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class V</a>
                                        <ul class='children'>
                                            <li class="page_item page-item-549"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Datesheet for Half Yearly Exam 2015-2016</a></li>
                                            <li class="page_item page-item-540"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Half Yearly Exam Syllabus 2015-2016</a></li>
                                            <li class="page_item page-item-714"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">MODEL TEST PAPER &#8211; CLASS &#8211; V</a></li>
                                            <li class="page_item page-item-844"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORKSHEET &#8211; CLASS V</a></li>
                                            <li class="page_item page-item-797"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">REVISION WORKSHEET- CLASS -V</a></li>
                                        </ul>
                                    </li>
                                    <li class="page_item page-item-538"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class VI</a></li>
                                    <li class="page_item page-item-544"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class VII</a></li>
                                    <li class="page_item page-item-547"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class VIII</a></li>
                                    <li class="page_item page-item-555"><a style="color:#0f8200;" href="${pageContext.request.contextPath}">Class IX</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="page_item page-item-99"><a href="${pageContext.request.contextPath}" style="color:#FFFFFF;">Contact Us</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right" style="margin-top:10px;">
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="${pageContext.request.contextPath}/signUp" style="color:#FFFFFF;">Create a Free Account</a></li>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="${pageContext.request.contextPath}/login" style="color:#FFFFFF;">Login</a></li>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a href="${pageContext.request.contextPath}/profile" style="color:#FFFFFF;">My Profile<span class="sr-only">(current)</span></a></li>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li><a href="<c:url value="/logout" />" style="color:#FFFFFF;">Logout<span class="sr-only">(current)</span></a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</header>
	
	
	
	<div class="container">
	
	
	
	<section style="box-shadow: 0px 0px 5px #006600;">		
			<div id="faq_one">
				<div style="background-color:#0f8200;padding:3px;">
					<h3 style="margin-left:15px;color:#FFFFFF;">FAQ</h3>
				</div>
				<ol>
					<li>
						<h4 style="color:#0f8200;">What is DHANGURU?</h4>
						<p>
							DHANGURU is a Social /Peer to peer Lending marketplace on the internet. DHANGURU helps to brings people together who need money and people who have money to lend and enables a loan between them with the help of DHANGURU.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">Is DHANGURU a financial institution?</h4>
						<p>
							No, DHANGURU is not a financial institution. It is a marketplace that brings together borrowers and lenders to enable a transaction between them on their terms. Individual borrowers get loan from individual lenders.
						</p>
					</li>
				
					<li>
						<h4  style="color:#0f8200;">Is DHANGURU regulated?</h4>
						<p>
							DHANGURU is like eBay for money or like a FACEBOOK for lending and borrowing. It is a marketplace on the internet. Since DHANGURU doesn't borrow or lend money, it does not come under the purview of RBI. In other words DHANGURU is a service provides to people towards their financial needs.
						</p>
					</li>
				
					<li>
						<h4  style="color:#0f8200;">How does DHANGURU work?</h4>
						<p>
							People who need money for personal need register as borrowers with DHANGURU and fill in the registration form. All the information provided must be accurate and up-to-date. Once you register, you will receive a phone call confirming your interest and our credit verification team is alerted.
						</p>
						<p>
							After your information is verified, you can then fill in your other details. Please ensure that you build your profile completely so that lenders offer you a loan with a trust / belief. Additional information such as your family background, financial status and employment details will help attract lenders to your listing.
						</p>
						<p>
							You can request loans from Rs. 20,000 to Rs. 5,00,000 subject to your ability to repay. This is determined by DHANGURU's credit team. Once your loan listing is active DHANGURU will share the details of the prospective lender with you and will actively try to fix up a meeting for you. There will be a Tripartite Agreement among Borrower, lender and DHANGURU signed by all three parties to protect the best interest of all the parties and to execute a safe financial activity.
						</p>
						<p>
							Similarly, lenders can place offers on the profile page indicating the amount they want to lend and the minimum returns expected. There shall be a Lock in period of One (01) month, for the lenders to enable the DHANGURU to search a prospective borrower for the lender. However, DHANGURU shall not keep the amount with itself and the amount shall be kept at lenders end only, but the main object of the one month lock in period is to borrow some time from the lenders to look for a capable borrower for a safe lending procedure.
						</p>
						<p>
							Documentation and related transactions for borrowers and lenders will be handled by DHANGURU.
						</p>
					</li>
				
					<li>
						<h4  style="color:#0f8200;">Why are loans on DHANGURU is cheaper?</h4>
						<p>
							DHANGURU business model works on a peer-to-peer concept. We let lenders and borrowers agree on terms of the transaction. This means, the interest rates are determined by the borrowers and lenders and not by DHANGURU (However, no interest can be charged beyond 5% per month). DHANGURU only charges a fixed <a style="color:green;">Processing Fee</a>. Unlike banks, we do not make any money over the difference, in lending or borrowing rates. What's more, DHANGURU brings down operation costs by using the internet as a platform to connect with lenders and borrowers. All transactions are done online and hence we do not have high capital expenditure such as people, cost at various locations and the infrastructure costs associated with this. This lowers our operation costs by a significant value which we pass on to our customers.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">What can I use as security for my business loan?</h4>
						<p>
							When taking out a loan, your lender will ask you to secure the loan using some form of asset that you or the borrower may own. This security is intended to cover the business loan amount in the event you are unable to pay it back.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">What assets do Dhanguru accept as security?</h4>
						<p>
							The most common asset for a loan is property, including residential, commercial and rural property. 
						</p>
						<p>
							Secondly, you can use other assets to secure a loan, including your cars, two wheelers and other equipment, or 
						</p>
						<p>
							You can also provide the gold, ornaments, jewelry, silver, or other valuables towards security.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">What if I want to sell my asset?</h4>
						<p>
							Whatever asset you use to secure your loan, you can still sell it if you need to during the loan term, provided, you obtain a written consent from Dhanguru and the lender and offer another form of security acceptable to Dhanguru to take its place (if required). 
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">What if something goes wrong and I can’t make my repayments?</h4>
						<p>
							If you're unable to make your loan repayments, lender may sell your asset(s), as the case may be. Lender will use the money from the sale of your asset to cover the remaining debt and any expenses incurred along the way; and you'll receive any money left over.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">How much does all of this cost?</h4>
						<p>
							DHANGURU charges minimal fee for the services it offers. Borrowers are charged a onetime processing fee of Rs. 500 for one loan transaction <a style="color:green;">(see payment terms and conditions)</a>.  On a successful loan closure, 1% of the loan amount is charged as processing fee in the first month of the loan, from the lender.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">Do you share my personal information with other parties?</h4>
						<p>
							No, information about borrowers or lenders is not shared with any third parties. Information is shared only for the purposes of transactions with the borrowers and lenders that too in a limited way. Only necessary information such as loan requirements, purpose, employment status and details, educational background etc. is shared on the site between the borrowers and lenders for making informed decisions. Please refer to <a style="color:green;">Privacy &amp; Security Policy</a> for more details.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">What happens if DHANGURU decided to windup its business?</h4>
						<p>
							In the event of DHANGURU closing, all loans that have originated through DHANGURU still hold good. This is because; the agreements are still legal and are signed directly between the parties. Legal action is necessitated shall be taken against borrower defaults.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">From where does DHANGURU operate? Can borrowers or lenders be from anywhere in India to borrow or lend?</h4>
						<p>
							DHANGURU's headquarter is situated at NOIDA, India and we are operational across India.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">Are there any charges for early repayment?</h4>
						<p>
							Neither Dhanguru nor our lenders charges for early payment but also reduce your interest amount to the exact number of days that you had kept the loan.
						</p>
						<p>
							If you want to make early payment just send an email to payments@dhanguru.com.
						</p>
					</li>
					<li>
						<h4  style="color:#0f8200;">How much does all of this cost?</h4>
						<p>
							DHANGURU charges minimal fee for the services it offers. Borrowers are charged a onetime processing fee of Rs. 500 for one loan transaction <a style="color:green;">(see payment terms and conditions)</a>.  On a successful loan closure, 1% of the loan amount is charged as processing fee in the first month of the loan, from the lender.
						</p>
					</li>
					
				</ol>
			</div>
			<div style="margin:30px;">
				<h4 style="color:#0f8200;">Responsible Lending </h4>
				<p>
					An online peer-to-peer lending platform gives infinite opportunities to a lender for making smart lending decisions that promise great returns within a short span of time. Over the period of time peer to peer lending has become the chosen platform for short term loans because of easy availability of loans, least documentation and freedom from long and uncertain loan approval time. Short term loans can help borrowers with immediate requirements like debt consolidation, family event, marriage loan, auto loan, or any other day to day requirement whatsoever.
				</p>
				
				<p>
					As borrowers seek easy availability of loans, least documentation and freedom from long and uncertain loan approval time, lenders too look to reap maximum profit quickly. Short term lending can be one of the best ways to earn fast returns without much hassle. However, it is highly imperative for a lender to establish the personal loan eligibility before agreeing to lend the money. A thorough background check and a close review of security documents of the borrower is a necessity to prevent any fraudulent activities in the future.
				</p>
				
				<h4  style="color:#0f8200;">Better safe than sorry</h4>
				<p>
					While the option of earning quick returns in a short span of time sounds lucrative, there can be certain drawbacks attached to it. Prior to lending, lenders need to weigh down the pros and cons and then take a call. It is always best to rule out issues, before lending, for it can hit your financial portfolio. In order to make smart lending decisions, lenders need to practice responsible lending. The financial market is always in a flux and to be able to lend and earn returns, will need accurate understanding of numbers. A thorough background check and a close review of security documents provided by the borrower is a necessity to prevent any fraudulent activities. 
				</p>
				
				<h4  style="color:#0f8200;">Tread the safe path!</h4>
				<p>
					When it comes to online peer-to-peer lending, it is best to take the safest path. Assessing the eligibility of the borrower is of utmost importance to ensure that lenders are not cheated of their money. Prior to lending, you need to evaluate the borrowers in terms of requirement for the loan, their capability to repay the amount within the stipulated time frame and the authentication of the security documents provided by the borrower thoroughly. Responsible lending is the key for all lenders to make quick money.
				</p>
			</div>
			
			
			
			
			<div id="lend_one" style="margin:30px;">
				<h3 style="text-align:center;color:#0f8200;">How to Lend ?</h3>
				<h4 style="color:#0f8200;">Lending Application Process</h4>
				<ul>
					<li>
						Create your account by duly filling the required information in the forms effectively.
					</li>
					
					<li>
						Fill in the lending amount, and other details in lender listing section.
					</li>
					
					<li>
						Discuss and finalize terms with your borrower, confirm loan and get EMIs.
					</li>
				</ul>
			</div>
			<div id="lend_two" style="margin:30px;">
				<h4 style="color:#0f8200;">Lender Eligibility Criteria</h4>
				<p>To become a lender on DHANGURU, you should be/have</p>
				<ul>
					<li>An Indian Resident.</li>
					<li>At least 18 years old</li>
					<li>Employed or earning from any business and profession</li>
					<li>Valid government issued identity proof(s)</li>
					<li>Valid bank account</li>
				</ul>
				
				<h4 style="color:#0f8200;">Documentation Have To Submit By borrowers At The Time Of Registration</h4>
				<ol>
					<li>
						<b>ID Proof</b>
						<ul>
							<li>PAN Card only</li>
						</ul>
					</li>
					<li>
						<b>Address Proof</b> (any one required)
						<ul>
							<li>Driving License</li>
							<li>Passport</li>
							<li>Latest Post-paid Telephone Bill / Mobile Bill</li>
							<li>Electricity Bill</li>
						</ul>
					</li>
					<li>
						<b>Photographs</b>
						<ul>
							<li>Upload Passport size recent photograph.</li>
							<li>Passport</li>
							<li>Latest Post-paid Telephone Bill / Mobile Bill</li>
							<li>Electricity Bill</li>
						</ul>
					</li>
					<li>
						Contact Details Proof (any one required)
						<ul>
							<li>Post-paid Mobile Bill</li>
							<li>Landline Bill</li>
						</ul>
					</li>
					<li>
						<b>Valuables to hypothecate / mortgage towards security of the loan</b>
					</li>
				</ol>
			</div>
		</section>
	</div>
	
	
	
	
	
	<footer>
		<div class="footer container-fluid" style="background-color:#032a00;">
	        <div class="mainfooter" style="margin-top:15px;">
    	        <div class="row">
    	        	<div class="col-md-3">
    	        		<legend style="border:0px solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Address</b></legend>
    	        		<div id="googleMap" style="width:100%;height:300px;box-shadow: 0px 0px 15px white;"></div><!-- margin-top:20px; -->
    	        	</div>
    	        	<div class="col-md-3">
    	        		<legend style="border:0px solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Facebook Page</b></legend>
          				<div style="width:100%;box-shadow: 0px 0px 15px white;" class="fb-page" data-href="https://www.facebook.com/Dhanguru-544684259032361/" data-height="300" data-width="312" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true">
            				<div class="fb-xfbml-parse-ignore">
              					<blockquote cite="https://www.facebook.com/Dhanguru-544684259032361/"><a href="https://www.facebook.com/Dhanguru-544684259032361/">DHANGURU</a></blockquote>
            				</div>
          				</div>
        			</div>

        			<div class="col-md-3">   	        		
                    	<legend style="border:0px solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Our Services</b></legend>
                    	<div style="text-align:center;box-shadow: 0px 0px 15px white;height:300px;width:100%;">
                    		<ul style="padding-left:0px;padding-top:0px;margin-left:0px;list-style-type: none;padding-top:0px;">
                        		<li style="padding-bottom:4px;padding-top:4px;"><a href="${pageContext.request.contextPath}/aboutUs" style="color:#FFFFFF;">About Us</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/borrower" style="color:#FFFFFF;">Borrower</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/lender" style="color:#FFFFFF;">Lender</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/applyForLoan" style="color:#FFFFFF;">How To Apply For Loan</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/mgt" style="color:#FFFFFF;">Management</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/roles" style="color:#FFFFFF;">Roles</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/faq" style="color:#FFFFFF;">FAQ</a></li>
                        		<li style="padding-bottom:9px;padding-top:9px;"><a href="${pageContext.request.contextPath}/terms" style="color:#FFFFFF;">Terms &amp; Conditions</a></li>
                    		</ul>
		                </div>
    	        	</div>
                    <div class="col-md-3" style="height:300px;">
                        <legend style="border:0px solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Stock Market</b></legend>
                        <div style="text-align:center;box-shadow: 0px 0px 15px white;height:300px;width:100%;">
                            <div><iframe src="http://www.appuonline.com/gadgets/marketwatch-g.html" width="310" height="300" frameborder="0" scrolling="yes"></iframe></div>
                        </div>
                    </div>
        		</div>
            	
	            <br clear="all" />
    	        </center>
        	</div>
	    </div>
	</footer>
<script>
		(function(d, s, id) {
  			var js, fjs = d.getElementsByTagName(s)[0];
  			if (d.getElementById(id)) return;
	  		js = d.createElement(s); js.id = id;
  			js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
  			fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
	</script>
	
	
	
	
	
	
</body>
</html>