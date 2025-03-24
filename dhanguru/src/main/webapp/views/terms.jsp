

<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Dhanguru</title>
		<!-- term.jsp -->
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
			
			<div id="lend_one">
				<div style="background-color:#0f8200;padding:3px;">
					<h3 style="margin-left:15px;color:#FFFFFF;">TERMS OF USE OF THIS WEBSITE</h3>
				</div>
				<div style="margin:20px;">
					<p>
						Welcome to our website "Dhanguru". If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern DHANGURU’s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.
					</p>
					<p>
						The term M/s DHANGURU, herein after referred as “DHANGURU” or ‘us’ or ‘we’ refers to the Company and owner of the website whose registered office is at Chamber no. 4, Raj Palace, Hukum Singh Market, Sector-27, Atta, NOIDA, Uttar Pradesh. The term ‘you’ refers to the user or viewer of our website.
					</p>
					<p>
						The use of this website is subject to the following terms of use:
					</p>
					<ul>
						<li>
							The content of the pages of this website is for your general information and use only. It is subject to change without notice.
						</li>
						<li>
							This website uses cookies to monitor browsing preferences.
						</li>
						<li>
							Neither we nor any third party(s) provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.
						</li>
						<li>
							DHANGURU makes no warranties or representations about this Website or any of its content. DHANGURU is not responsible to you or anyone else for any damages of any kind, including but not limited to any direct or consequential loss and losses resulting from security failure, disclosure of confidential information by other parties or the transmission of a computer virus, suffered in connection with the use of this Website. Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.
						</li>
						<li>
							This website contains material which is owned by us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.
						</li>
						<li>
							Unauthorized use of this website may give rise to a claim for damages and/or penalization under IPC.
						</li>
						<li>
							From time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).
						</li>
						<li>
							Your use of this website and any dispute arising out of such use of the website is subject to the laws of India and exclusive jurisdiction of the courts of Andhra Pradesh.
						</li>
					</ul>
					<p>
						For any further information please contact us at DHANGURU, Chamber no. 4, Raj Palace, Hukum Singh Market, Sector-27, Atta, NOIDA, Uttar Pradesh or call us at 9891459947 or e-mail your queries to <a style="color:green;">support@dhanguru.com</a>
					</p>
				</div>
			</div>
			<div id="lend_two" style="margin:30px;">
				<h3 style="color:#0f8200;">PRIVACY &amp; SECURITY</h3>
				<p>
					Your privacy is utmost important to DHANGURU. This privacy policy covers what, why and how we collect, use, disclose, transfer and store your information. Going further below is our privacy policy and DHANGURU would request you to review the information provided for more clarification.
				</p>
				
				<h4 style="color:#0f8200;">Why ?</h4>
				<p>
					We set our priorities in building our customers' confidence and we respect the trust you repose in us when you share your personal information with us. 
				</p>
				
				<h4 style="color:#0f8200;">What ?</h4>
				<p>
					We collect your information to provide our services in a best possible manner, and the information collected includes your name, address, contact numbers, PAN, email id, income statements, declarations, financial information such as bank account or credit card or debit card or other payment instruments etc.
				</p>
				<h4 style="color:#0f8200;">How ?</h4>
				<p>
					The information collected will be shared
				</p>
				<ol>
					<li>
						For providing the requested services
					</li>
					<li>
						For carrying on day-to-day business, i.e. for processing the transactions, maintaining the accounts, responding to legal investigation and legal compliances.
					</li>
					<li>
						For project planning
					</li>
					<li>
						To third-party contractors which have dealings with Dhanguru.
					</li>
					<li>
						To enforce DHANGURU's Terms of Use; and
					</li>
					<li>
						As otherwise set forth in this privacy and security policy.
					</li>
				</ol>
			</div>
			
			
			
			
			<div id="lend_one" style="margin:30px;">
				<h3 style="color:#0f8200;">DATA USAGE</h3>
				<h4 style="color:#0f8200;">Cookies</h4>
				<p>
					These are information stored by your browser on your computer when allowed. Use of cookies in our website is similar to other online marketplaces. These are used to enhance your experience with our Website. We use cookies to help us identify who you are, so your login experience is smooth each time. Cookies also allow us to collect Non-Personally Identifiable Information from you, like which pages you visited and what links you clicked on. Use of this information helps us to create a more user-friendly experience for all visitors. In addition, we may use Third Party Advertising Companies to display advertisements on our Website. Most browsers automatically accept cookies, but you may be able to modify your browser settings to decline cookies. Please note that if you decline or delete these cookies, some parts of the Website may not work properly.
				</p>
				
				<h4 style="color:#0f8200;">Others</h4>
				<p>
					In addition to cookies, we may use other industry standard technologies to track your use of our web pages and promotions. We may also allow our Third Party Service Providers to use these data on our behalf.
				</p>
				
				<h4 style="color:#0f8200;">Security of Information</h4>
				<p>
					We take appropriate precautions to protect the security of Personal identity details. You can access your Personal identity details on our Website through your login and password, once your registration process and our verification processes complete. We recommend that you do not share your password with anyone. In addition, your personal details are stored on a secure server that only selected personnel and contractors have access to. We encrypt certain sensitive information using Secure Socket Layer (SSL) technology to ensure that your personal details are safe as it is transmitted to us.
				</p>
				<p>
					However, you understand and accept no data transmission over the Internet can be guaranteed to be completely secure. We cannot ensure or warrant the security of any information that you transmit to us, so you do so at your own risk.
				</p>
			</div>
			<div id="lend_two" style="margin:30px;">
				<h3 style="color:#0f8200;">Privacy Policies of Third Party Websites</h3>
				<p>
					This privacy policy only addresses the use and disclosure of information we collect from you. Other websites that may be accessible through this Website have their own privacy policies and data collection, use and disclosure practices. If you link to any such website, we urge you to review such website′s privacy policy. We are not responsible for the policies or practices of third parties.
				</p>
				<p>
					Posting of your data on registration, you also permit to post your data on our website for advertisement purposes. On termination of registration or on your request, the data will be deleted. In the event of merger, amalgamation or acquisition, the data provided to us will be transferred to the third party as the sale may include your personal information.
				</p>
				
				<h4 style="color:#0f8200;">Disclosure of information</h4>
				<ul>
					<li>
						To third-party which have dealings with DHANGURU (in agreement with the customer), and
					</li>
					<li>
						To the Government and other judicial bodies as required under the law in order to comply with the legal obligations (without the prior permission of customers).
					</li>
				</ul>
				<p>
					DHANGURU website shall also contain links to the other websites. Customers are requested to go through the respective privacy polices disclosed under the relevant sites to familiarize themselves.
				</p>
				<p>
					We request you to kindly review our privacy policy more frequently, as your use of our services provides your acceptance to the prevailing privacy policy.
				</p>
				
				<h4 style="color:#0f8200;">Disclaimer :</h4>
				<p>
					DHANGURU is an online portal connecting borrowers and lenders for loans. Although, DHANGURU verifies credentials of the users at the time of the registration process on the site, it does not assure any loan offers by lenders nor does it guarantee any repayments by borrowers. Users make offers / loan requests at their own discretion with understanding of the risks involved in such transactions. Please read our Legal agreements to understand more.
				</p>
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