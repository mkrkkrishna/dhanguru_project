<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Sign Up - Dhanguru</title>
		<!-- signUp.jsp -->
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
                            <%--<li><a href="<c:url value="${pageContext.request.contextPath}/logout" />" style="color:#FFFFFF;">Logout<span class="sr-only">(current)</span></a></li>--%>
                            <li><a href="<c:url value="/logout" />" style="color:#FFFFFF;">Logout<span class="sr-only">(current)</span></a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
    </header>






    <script type="text/javascript">

        function checkForm(form)
        {
            /*if(form.username.value == "") {
                alert("Error: Username cannot be blank!");
                form.username.focus();
                return false;
            }
            re = /^\w+$/;
            if(!re.test(form.username.value)) {
                alert("Error: Username must contain only letters, numbers and underscores!");
                form.username.focus();
                return false;
            }*/

            if(form.password.value != "" && form.password.value == form.confirmPassword.value) {
                /*if(form.pwd1.value.length < 6) {
                    alert("Error: Password must contain at least six characters!");
                    form.pwd1.focus();
                    return false;
                }
                if(form.pwd1.value == form.username.value) {
                    alert("Error: Password must be different from Username!");
                    form.pwd1.focus();
                    return false;
                }
                re = /[0-9]/;
                if(!re.test(form.pwd1.value)) {
                    alert("Error: password must contain at least one number (0-9)!");
                    form.pwd1.focus();
                    return false;
                }
                re = /[a-z]/;
                if(!re.test(form.pwd1.value)) {
                    alert("Error: password must contain at least one lowercase letter (a-z)!");
                    form.pwd1.focus();
                    return false;
                }
                re = /[A-Z]/;
                if(!re.test(form.pwd1.value)) {
                    alert("Error: password must contain at least one uppercase letter (A-Z)!");
                    form.pwd1.focus();
                    return false;
                }*/
            } else {
                alert("Error: Please check that you've entered and confirmed your password!");
                form.password.focus();
                return false;
            }

            alert("You entered a valid password: " + form.password.value);
            return true;
        }

    </script>



    <div class="container">
        <section style="box-shadow: 0px 0px 5px #006600;padding-bottom:20px;">
            <div style="background-color:#0f8200;text:center;padding:3px;">
                <h3 style="text-align:center;color:#FFFFFF;">Sign Up</h3>
            </div>
            <div style="width:100%;margin-top:50px;">

                <form action="${pageContext.request.contextPath}/saveUser" method="post" onsubmit="return checkForm(this);">
                    <div style="width:90%;margin-left:20px;margin-top:0px;">

                        <div class="row" style="margin-bottom:20px;margin-top:10px;">

                            <div class="col-md-2" style="padding-left:60px;">Name:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="fullName" placeholder="FULL NAME" required/></div>

                            <div class="col-md-2" style="padding-left:60px;">DOB:</div>
                            <div class="col-md-4"><input type="date" class="form-control" name="dob" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:10px;">

                            <div class="col-md-2" style="padding-left:60px;">Nick Name:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="nickName" placeholder="NICK NAME" required/></div>

                            <div class="col-md-2" style="padding-left:60px;">Mobile:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="mobile" placeholder="MOBILE NUMBER" required></div>
                        </div>


                        <div class="row" style="margin-bottom:20px;margin-top:20px;">
                            <%--<div class="col-md-1"></div>--%>
                            <div class="col-md-2" style="padding-left:60px;">Home Contact:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="homeContact" placeholder="HOME CONTACT" required></div>

                            <div class="col-md-2" style="padding-left:60px;">Office Contact:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="officeContact" placeholder="OFFICE CONTACT" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">

                            <div class="col-md-2" style="padding-left:60px;">Father Name:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="fatherName" placeholder="FATHER NAME" required></div>

                            <div class="col-md-2" style="padding-left:60px;">Mother Name:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="motherName" placeholder="MOTHER NAME" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">
                            <div class="col-md-2" style="padding-left:60px;">Street:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="streetAddress" placeholder="STREET ADDRESS" required></div>

                            <div class="col-md-2" style="padding-left:60px;">Address:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="address1" placeholder="ADDRESS" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">

                            <div class="col-md-2" style="padding-left:60px;">City:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="city" placeholder="CITY" required></div>

                            <div class="col-md-2" style="padding-left:60px;">Pincode:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="pincode" placeholder="PINCODE" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">

                            <div class="col-md-2" style="padding-left:60px;">State:</div>
                            <div class="col-md-4">
                                <select class="form-control" name="state" id="sel1">
                                    <option>STATE</option>
                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chandigarh">Chandigarh</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                    <option value="Daman and Diu">Daman and Diu</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Lakshadweep">Lakshadweep</option>
                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Manipur">Manipur</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Orissa">Orissa</option>
                                    <option value="Pondicherry">Pondicherry</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Uttaranchal">Uttaranchal</option>
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="West Bengal">West Bengal</option>
                                </select>
                            </div>

                            <div class="col-md-2" style="padding-left:60px;">Country:</div>
                            <div class="col-md-4"><input type="text" placeholder="COUNTRY" class="form-control" value="INDIA" readonly></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">

                            <div class="col-md-2" style="padding-left:60px;">Email ID:</div>
                            <div class="col-md-4"><input type="email" class="form-control" name="email" placeholder="EMAIL ADDRESS" required></div>

                            <div class="col-md-2" style="padding-left:60px;">Password:</div>
                            <div class="col-md-4"><input type="password" class="form-control" name="password" placeholder="PASSWORD" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">

                            <div class="col-md-2" style="padding-left:50px;">Alternative Email:</div>
                            <div class="col-md-4"><input type="email" class="form-control" name="alternateEmail" placeholder="EMAIL ADDRESS" required></div>

                            <div class="col-md-2" style="padding-left:40px;">Confirm Password:</div>
                            <div class="col-md-4"><input type="password" class="form-control" name="confirmPassword" placeholder="CONFIRM PASSWORD" required></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">
                            <div class="col-md-1"></div>
                            <div class="col-md-5">
                                <p style="background-color:#FFFFFF;font-size:13px;padding:2px;position:absolute;top:-10px;left:50px;">Gender:</p>
                                <div style="padding:10px;border:1px solid black;">
                                    <label class="radio-inline" style="margin-left:40px;">
                                        <input type="radio" name="gender" value="Male">Male
                                    </label>
                                    <label class="radio-inline" style="margin-left:170px;">
                                        <input type="radio" name="gender" value="Female">Female
                                    </label>
                                </div>
                            </div>

                            <div class="col-md-2" style="padding-left:60px;">Nationality:</div>
                            <div class="col-md-4"><input type="text" class="form-control" name="nationality" placeholder="NATIONALITY" value="INDIAN" readonly></div>
                        </div>

                        <div class="row" style="margin-bottom:20px;margin-top:20px;">
                            <div class="col-md-6"></div>
                            <div class="col-md-6 checkbox">
                                <label style="margin-left:20px;"><input type="checkbox" name="enabled" value="eighteen" required>I Accept all instruction</label>
                            </div>
                        </div>

                        <hr/>

                        <div class="row" style="margin:20px 0px 5px 20px;">
                            <div class="col-md-6"></div>
                            <div class="col-md-6"><input type="submit" class="btn btn-success" value="Save"/></div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
		
		
		
		
		<footer>
		<div class="footer container-fluid" style="background-color:#032a00;"><!-- 0f8200 -->
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
                    	<legend style="border:0px solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Information</b></legend>
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