


<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="error.jsp"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Home - Dhanguru</title>
    <!-- index.jsp -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <!-- spring mapping of resourses start -->
    <!-- CSS -->
    <spring:url value="/resources/css/style.css" var="styleCss" />
    <spring:url value="/resources/css/icici/custom.min.css" var="custom"/>
    <spring:url value="/resources/css/icici/flexslider.css" var="flexslider"/>
    <spring:url value="/resources/css/icici/library.min.css" var="liberary"/>
    <spring:url value="/resources/css/icici/print.css" var="print"/>
    <spring:url value="resources/css/calendar.css" var="calendar"/>
    <spring:url value="resources/css/base.css" var="base"/>
    <spring:url value="resources/css/styleCard.css" var="styleCard"/>

    <!-- JS -->
    <spring:url value="/resources/js/parallax.min.js" var="parallax"/>
    <spring:url value="/resources/js/modernizr.js" var="modernizr"/>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>

    <script src="${parallax}"></script>
    <script src="${modernizr}"></script>

    <link rel="stylesheet" href="${calendar}" media="screen">
    <link rel="stylesheet" href="${base}" />
    <link rel="stylesheet" href="${styleCard}" />

    <!-- new -->
    <!-- <link rel="pingback" href="http://dpsnoida.in/xmlrpc.php" /> -->
    <!--[if lt IE 9]>
    <!--<script src="http://dpsnoida.in/wp-content/themes/green-eye/js/html5.js" type="text/javascript"></script>-->
    <![endif]-->

    <link rel='stylesheet' id='green-style-css'  href='${styleCss}' type='text/css' media='all' />
    <style>
        a,.page_item
        {
            color:white;
        }
    </style>


    <script>
        $(document).ready(function(){
            if (Modernizr.touch) {
                // show the close overlay button
                $(".close-overlay").removeClass("hidden");
                // handle the adding of hover class when clicked
                $(".img").click(function(e){
                    if (!$(this).hasClass("hover")) {
                        $(this).addClass("hover");
                    }
                });
                // handle the closing of the overlay
                $(".close-overlay").click(function(e){
                    e.preventDefault();
                    e.stopPropagation();
                    if ($(this).closest(".img").hasClass("hover")) {
                        $(this).closest(".img").removeClass("hover");
                    }
                });
            } else {
                // handle the mouseenter functionality
                $(".img").mouseenter(function(){
                    $(this).addClass("hover");
                })
                    // handle the mouseleave functionality
                        .mouseleave(function(){
                            $(this).removeClass("hover");
                        });
            }
        });
    </script>

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
                position:myCenter
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>


    <style>
        .serviceCity
        {
            text-align:center;
            font-size:200%;
            color:red;
        }
    </style>
</head>

<body>
<!-- Modal A start-->
<div class="modal fade" id="myModala" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>You Invest More Then Loaning Amount.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal A end-->


<!-- Modal B start-->
<div class="modal fade" id="myModalb" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>You invest more then need.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<!-- Modal B end-->


<!-- Modal C start-->
<div class="modal fade" id="myModalc" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>Your fixing invester in completed.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<!-- Modal C end-->



<!-- Modal D start-->
<div class="modal fade" id="myModald" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>Invester is Fixed.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<!-- Modal D end-->

<input type="hidden" id="txtTest" name="txtTest" value="${fixInvester}" />
<script type="text/javascript">
    $(function()
    {
        if($("#txtTest").val()=="a") {
            $("#myModal").modal();
            /*alert("You Invest More Then Loaning Amount.");*/
            $("#myModala").modal();
        }

        if($("#txtTest").val()=="b") {
            /*alert("You invest more then need.");*/
            $("#myModalb").modal();
        }

        if($("#txtTest").val()=="c") {
            /*alert(" Your fixing invester in completed.");*/
            $("#myModalc").modal();
        }

        if($("#txtTest").val()=="d") {
            /*alert("Invester is fixed.");*/
            $("#myModald").modal();
        }
    });
</script>

<c:if test="${not empty available}">
    <script>
        $(document).ready(function(){
            // This function will be executed when you click the element
            // show the element you want to show
            $("p.serviceCity").show();

            // Set a timeout to hide the element again
            setTimeout(function(){
                $("p.serviceCity").hide();
            }, 10000);
        });
    </script>

    <p class="serviceCity">${available}</p>
</c:if>



<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




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
                        <a class="jumper" href="#about-us" style="color:#FFFFFF;">About Us</a>
                        <%--<ul class="children">
                            <li class="page_item page-item-93"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/borrower">Borrower</a></li>
                            <li class="page_item page-item-84"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/lender">Lender</a></li>
                            <li class="page_item page-item-96"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/faq">Frequently Ask Questions</a></li>
                            <li class="page_item page-item-98"><a style="color:#0f8200;" style="color:#0f8200;" href="${pageContext.request.contextPath}/mgt">Board of Management</a></li>
                            <li class="page_item page-item-383"><a style="color:#0f8200;" href="${pageContext.request.contextPath}/roles">Roles</a></li>
                        </ul>--%>
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
                                <a style="color:#0f8200;" href="${pageContext.request.contextPath}/welcome">Welcome Test</a><%--Debating Club--%>
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
                    <li class="page_item page-item-99"><a class="cu" href="#contactUs" style="color:#FFFFFF;">Contact Us</a></li>
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



<section>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000" style="width:100%;height: 450px;padding: 0px 0 5px 0;">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="resources/images/sliderImage/01.jpg" alt="Dhanguru" style="width: 100%; height: 450px; position: relative;">
            </div>
            <div class="item">
                <img src="resources/images/sliderImage/02.jpg" alt="Dhanguru" style="width: 100%; height: 450px; position: relative;">
            </div>
            <div class="item">
                <img src="resources/images/sliderImage/03.jpg" alt="Dhanguru" style="width:100%;height:450px; position: relative;">
            </div>
            <div class="item">
                <img src="resources/images/sliderImage/04.jpg" alt="Dhanguru" style="width: 100%; height: 450px; position: relative;">
            </div>
            <div class="item">
                <img src="resources/images/sliderImage/05.jpg" alt="Dhanguru" style="width: 100%; height: 450px; position: relative;">
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <!-- bootstrap library -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="resources/js/jquery-ui-datepicker.min.js"></script>

<div class="container-fluid" style="box-shadow: 0px 0px 5px #006600;text-align:center;margin-left:2.5%; width:95%;"><!-- margin-top:2.8%; -->
    <br><br>
    <section>
        <div class="container-fluid nopad" >
            <div class="row">
                <div class="col-md-6" style="height:100%;">
                    <legend style="width:100%;height:15%;background:#0f8200;color:#FFFFFF;font-size:180%;padding:0 0% 0 0;"><b>Calender</b></legend>
                    <div class="about-right" style="color:#000000;height:100%;">
                        <div style="height:100%;width: 100%;" id="calendar"></div>
                    </div>

                    <script>
                        $('#calendar').datepicker({
                            inline: true,
                            firstDay: 1,
                            showOtherMonths: true,
                            dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                        });
                    </script>
                </div>
                <div class="col-md-6" style="color:#FFFFFF;">
                    <div style="background-color:#eaeaea;width:90%;margin-left:5%;">
                        <legend style="width:100%;height:15%;background:#0f8200;color:#FFFFFF;font-size:180%;padding:0 0% 0 0;"><b>Enquiry</b></legend>
                        <form action="${pageContext.request.contextPath}/contactUs" method="post">
                            <div style="padding-right: 20px;padding-left: 10px;">
                                <div class="form-group" style="padding-top: 3px;">
                                    <input type="text" class="form-control" name="name" placeholder="ENTER USER NAME" required>
                                </div>
                                <div class="form-group" style="padding-top: 3px;">
                                    <input type="number" class="form-control" name="phone" placeholder="MOBILE NUMBER" required>
                                </div>
                                <div class="form-group" style="padding-top: 3px;">
                                    <input type="email" class="form-control" name="email" placeholder="EMAIL ID" required>
                                </div>
                                <div class="form-group" style="padding-top: 3px;">
                                    <input type="text" class="form-control" name="subjectEnqiry" placeholder="SUBJECT" required>
                                </div>
                                <div class="form-group" style="padding-top: 3px;">
                                    <textarea class="form-control" name="query" rows="2" placeholder="Ask Query" required></textarea>
                                </div>
                                <div class="form-group" style="padding:3px 10px 20px 0;">
                                    <input name="submit" type="submit" value="Submit" class="btn btn-xl btn-block btn-info" style="color:#FFFFFF;font-size:20px;height: 50px">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br><br>


    <section>
        <legend style="width:100%;height:12%;background:#0F8200;color:#FFFFFF;font-size:180%;text-align:center;padding:0 0 0 0;"><b>Services</b></legend><%--border:10px solid #0f8200;--%>
        <div class="container" style="width:100%;margin-left:3%;">
            <div id="effect-2" class="effects clearfix">
                <div class="img">
                    <img src="resources/images/services/homeLoan.jpg" alt="" width=250 height=200>
                    <div class="overlay">
                        <a href="#" class="expand">+</a>
                        <a class="close-overlay hidden">x</a>
                    </div>
                </div>
                <div class="img">
                    <img src="resources/images/services/longTermLoan.jpg" alt="" width=250 height=200>
                    <div class="overlay">
                        <a href="${pageContext.request.contextPath}/login" class="expand">+</a>
                        <a class="close-overlay hidden">x</a>
                    </div>
                </div>
                <div class="img">
                    <img src="resources/images/services/shortTermLoan.jpg" alt="" width=250 height=200>
                    <div class="overlay">
                        <a href="${pageContext.request.contextPath}/login" class="expand">+</a>
                        <a class="close-overlay hidden">x</a>
                    </div>
                </div>
                <div class="img">
                    <img src="resources/images/services/investHere.jpg" alt="" width=250 height=200>
                    <div class="overlay">
                        <a href="${pageContext.request.contextPath}/login" class="expand">+</a>
                        <a class="close-overlay hidden">x</a>
                    </div>
                </div>
                <div class="img">
                    <img src="resources/images/services/e-Wallet.jpg" alt="" width=250 height=200>
                    <div class="overlay">
                        <a href="#" class="expand">+</a>
                        <a class="close-overlay hidden">x</a>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <%-- <section>
       <div class="container">
           <h1>Offers especially for you</h1>
           <div class="flexslider carousel-bsr">
               <ul class="slides">
                   <li style="display: inline;">
                       <div class="card">
                           <div id="card-trigger">
                               <div class="slide-thumb" style="border:2px solid blue;">
                                   <img src="resources/images/underSlider.jpg" width="200" height="120" data-original="/managed-assets/images/offer-zone/home-offer-thumbnails/pocket-irctc-offer-hp-t.jpg" src="" class="lazy">
                               </div>
                               <div class="slide-desc">
                                   <h6>10% cashback on booking rail tickets at IRCTC</h6>
                                   <p class="exp-desktop">Expires on 31-01-2016</p>
                               </div>
                               <div data-source="" class="slide-sm-desktop offer-rating">&nbsp;</div>
                           </div>
                           <div id="card-box">
                               <div class="so-header">
                                   <h5>Save upto</h5>
                                   <h2>Rs.500</h2>
                                   <p class="offerValid">Download Pockets at
                                       icicibank.com/pockets</p>
                                   <p>
                                       <a target="_blank" href="/offers/pocket-irctc-offer.page?" onclick="dataLayer.push({'event':'GAevent', 'gaEventCategory':'icici-std-hp-offers-3-pockets-irctc', 'gaEventAction':'offer-cta-click', 'gaEventLabel':'std-hp-offers'})">
                                       <img src="/assets/img1/slider/btn_see_all.png">
                                   </a>
                               </p>
                               <p class="exp-mobile">
                                   Expires on <br>31-01-2016
                               </p>
                               <div class="overlay-sm clearfix">
                                   <div data-source="" class="slide-sm-mobile offer-rating">&nbsp;</div>
                                   <span class="overlay-left">Share</span> <span
                                       class="overlay-right"> <a target="_blank"
                                       href="https://www.facebook.com/sharer/sharer.php?u=http://www.icicibank.com/offers/pocket-irctc-offer.page?">
                                           <img src="/assets/img1/slider/fb_icon.png">
                                   </a> <a target="_blank"
                                       href="https://twitter.com/intent/tweet?url=http://www.icicibank.com/offers/pocket-irctc-offer.page?&amp;text=/Pocket IRCTC Offer">
                                           <img src="/assets/img1/slider/tw_icon.png">
                                   </a>
                                   </span>
                               </div>
                           </div>
                       </div>
                   </div>
               </li>
               <li style="display: inline;">
                   <div class="card">
                       <div id="card-trigger">
                           <div class="slide-thumb">
                               <img src="resources/images/underSlider.jpg" width="220" height="320" data-original="/managed-assets/images/offer-zone/home-offer-thumbnails/pmr-icicibankpay.jpeg" src="" class="lazy">
                           </div>
                           <div class="slide-desc">
                               <h6>Register at icicibankpay to recharge mobile on twitter</h6>
                               <p class="exp-desktop">Expires on 31-01-2016</p>
                           </div>
                           <div data-source="" class="slide-sm-desktop offer-rating">&nbsp;</div>
                       </div>
                       <div id="card-box">
                           <div class="so-header">
                               <h5>Extra recharge</h5>
                               <h2>Rs. 50</h2>
                               <p class="offerValid">Offer valid on a recharge of Rs.100
                                   or more</p>
                               <p>
                                   <a target="_blank"
                                       href="/offers/pocket-twitter-pmr-offer.page?"
                                       onclick="dataLayer.push({'event':'GAevent', 'gaEventCategory':'icici-std-hp-offers-1-extra-recharge', 'gaEventAction':'offer-cta-click', 'gaEventLabel':'std-hp-offers'})">
                                       <img src="/assets/img1/slider/btn_see_all.png">
                                   </a>
                               </p>
                               <p class="exp-mobile">
                                   Expires on <br>31-01-2016
                               </p>
                               <div class="overlay-sm clearfix">
                                   <div data-source="" class="slide-sm-mobile offer-rating">&nbsp;</div>
                                   <span class="overlay-left">Share</span> <span
                                       class="overlay-right"> <a target="_blank"
                                       href="https://www.facebook.com/sharer/sharer.php?u=http://www.icicibank.com/offers/pocket-twitter-pmr-offer.page?">
                                           <img src="/assets/img1/slider/fb_icon.png">
                                   </a> <a target="_blank"
                                       href="https://twitter.com/intent/tweet?url=http://www.icicibank.com/offers/pocket-twitter-pmr-offer.page?&amp;text=/Rs. 50 extra recharge free">
                                           <img src="/assets/img1/slider/tw_icon.png">
                                   </a>
                                   </span>
                               </div>
                           </div>
                       </div>
                   </div>
               </li>
               <li style="display: inline;">
                   <div class="card">
                       <div id="card-trigger">
                           <div class="slide-thumb">
                               <img src="resources/images/underSlider.jpg" width="220" height="320" data-original="/managed-assets/images/offer-zone/home-offer-thumbnails/jabong-30-off-offer-t.jpg" src="" class="lazy">
                           </div>
                           <div class="slide-desc">
                               <h6>Get an additional 30% off on minimum purchase of ₹1299</h6>
                               <p class="exp-desktop">Expires on 31-03-2016</p>
                           </div>
                           <div data-source="5.0" class="slide-sm-desktop offer-rating">&nbsp;</div>
                       </div>
                       <div id="card-box">
                           <div class="so-header">
                               <h5>Use Promo Code</h5>
                               <h2>ICICI30</h2>
                               <p class="offerValid">at www.jabong.com/icici</p>
                               <p>
                                   <a target="_blank" href="/offers/jabong-cashback-offer.page?" onclick="dataLayer.push({'event':'GAevent', 'gaEventCategory':'icici-std-hp-offers-4-jabong-offer-30-off', 'gaEventAction':'offer-cta-click', 'gaEventLabel':'std-hp-offers'})">
                                       <img src="/assets/img1/slider/btn_see_all.png">
                                   </a>
                               </p>
                               <p class="exp-mobile">Expires on <br>31-03-2016</p>
                               <div class="overlay-sm clearfix">
                                   <div data-source="5.0" class="slide-sm-mobile offer-rating">&nbsp;</div>
                                   <span class="overlay-left">Share</span>
                                   <span class="overlay-right">
                                       <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http://www.icicibank.com/offers/jabong-cashback-offer.page?">
                                           <img src="/assets/img1/slider/fb_icon.png">
                                       </a>
                                       <a target="_blank" href="https://twitter.com/intent/tweet?url=http://www.icicibank.com/offers/jabong-cashback-offer.page?&amp;text=/Jabong Additional 30% Off">
                                           <img src="/assets/img1/slider/tw_icon.png">
                                       </a>
                                   </span>
                               </div>
                           </div>
                       </div>
                   </div>
               </li>
               <li style="display: inline;">
                   <div class="card">
                       <div id="card-trigger">
                           <div class="slide-thumb">
                               <img src="resources/images/underSlider.jpg" width="220" height="320" data-original="/managed-assets/images/offer-zone/home-offer-thumbnails/refer-your-friends.jpeg" src="" class="lazy">
                           </div>
                           <div class="slide-desc">
                               <h6>Login to Pockets for your referral code</h6>
                               <p class="exp-desktop">Expires on 31-01-2016</p>
                           </div>
                           <div data-source="" class="slide-sm-desktop offer-rating">&nbsp;</div>
                       </div>
                       <div id="card-box">
                           <div class="so-header">
                               <h5>Refer and Earn</h5>
                               <h2>Rs. 250</h2>
                               <p class="offerValid">Download Pockets at
                                   icicibank.com/getpocket</p>
                               <p>
                                   <a target="_blank" href="/offers/pocket-refer-and-earn-offer.page?" onclick="dataLayer.push({'event':'GAevent', 'gaEventCategory':'icici-std-hp-offers-2-pockets-refer', 'gaEventAction':'offer-cta-click', 'gaEventLabel':'std-hp-offers'})">
                                       <img src="/assets/img1/slider/btn_see_all.png">
                                   </a>
                               </p>
                               <p class="exp-mobile">Expires on <br>31-01-2016</p>
                               <div class="overlay-sm clearfix">
                                   <div data-source="" class="slide-sm-mobile offer-rating">&nbsp;</div>
                                   <span class="overlay-left">Share</span>
                                   <span class="overlay-right">
                                       <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http://www.icicibank.com/offers/pocket-refer-and-earn-offer.page?">
                                           <img src="/assets/img1/slider/fb_icon.png">
                                       </a>
                                       <a target="_blank" href="https://twitter.com/intent/tweet?url=http://www.icicibank.com/offers/pocket-refer-and-earn-offer.page?&amp;text=/Refer and earn with pockets">
                                           <img src="/assets/img1/slider/tw_icon.png">
                                       </a>
                                   </span>
                               </div>
                           </div>
                       </div>
                   </div>
               </li>
           </ul>
       </div>
       <center>
           <a href="/Personal-Banking/offers/offer-index.page?">
               <img src="/assets/img1/slider/btn_see_all_offers.png"></a>
       </center>
   </div>
   </section> --%>

    <br>

    <!-- About Us start -->
    <style>

        .parallax-window
        {

            width:106%;
            margin-left:-3%;
            min-height: 394px;
            background: transparent;
        }

        .about-right
        {
            text-align:left;
            color:#FFFFFF;
        }


    </style>


    <section id="about-us">
        <div class="container-fluid nopad" >
            <div class="row">
                <div class="col-md-5">
                    <div id="about">
                        <div data-parallax="scroll" ><img class="parallax-window" src="resources/images/03AU.jpg"/></div><%--data-image-src="resources/images/03AU.jpg"--%>
                    </div>
                </div>
                <div class="col-md-7" style="background-color:#0d7200;">
                    <div class="about-right" style="padding:0px 0px 0px 0px;">
                        <h2>About-us</h2>
                        <p style="line-height:200%;">DHANGURU, India's fastest growing and leading online digital peer-to-peer platform, which connects borrowers who are in need of money and to lenders who are ready to invest and to get good returns. We have come up with this bold new means of providing loans direct from the people and borrowings under one roof, which is not only novel but the simplest, fastest and a very secure way of borrowing money. In this novel business method, we have gone beyond excessive paperwork, meetings and phone calls, followed by long and uncertain waiting period for your loan approval to come through. This method is an alternative lending-borrowing model to traditional financial institutions. The concept allows individuals to borrow and lend money directly to each other and benefit from a transaction (done online) that is financially rewarding for both the parties.</p>
                        <p style="line-height:210%;">DHANGURU, launched as an initiative to develop an online platform / portal which is free from hassles and technicalities and to add up to this, DHANGURU helps borrowers to get loans at low rates and lenders to get better returns from mutually beneficial transactions between them.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        $(".jumper").on("click", function( e ) {
            e.preventDefault();
            $("body, html").animate({
                scrollTop: $( $(this).attr('href') ).offset().top
            }, 1000);
        });
    </script>

    <br><br>

    <section id="contactUs">
        <div class="container-fluid nopad" >
            <div class="row">
                <div class="col-md-6" style="padding-left:0px;">
                    <div style="background-color: #eaeaea;">
                        <legend style="width:100%;height:15%;background:#0f8200;color:#FFFFFF;font-size:180%;padding:0 0 0 0;"><b>Contact Us</b></legend>

                        <div class="row" style="margin-top:5%;">
                            <div class="col-sm-5">
                                <b style="color:#0f9cff;font-size:14px;"><span style="color:#0f8200;" class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;MANAV SHARMA</b><br/>
                                <b style="font-size:10px;">&nbsp;&nbsp;(Head Legal & Operations)</b>
                            </div>
                            <div class="col-sm-6" style="text-align:left;">
                                <p style="color:#0f9cff;"><span style="color:#0f8200;" class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;9999999999, 9999999999</p>
                                <p style="color:#0f9cff;font-size:12px;"><span style="color:#0f8200;" class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;info@dhanguru.com   ,  bill@dhanguru.com</p>
                                <p style="color:#0f9cff;font-size:12px;"><span style="color:#0f8200;" class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;support@dhanguru.com  ,  manav@dhanguru.com</p>
                            </div>
                        </div>

                        <div class="row" style="margin-top:10%;">
                            <div class="col-sm-5">
                                <b style="color:#0f9cff;font-size:14px;"><span  style="color:#0f8200;"class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;ROHAN VERMA</b><br/>
                                <b style="font-size:10px;">&nbsp;&nbsp;(Head Finance & Financial Controller)</b>
                            </div>
                            <div class="col-sm-6" style="text-align:left;">
                                <p style="color:#0f9cff;"><span style="color:#0f8200;" class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;8888888888, 8888888888</p>
                                <p style="color:#0f9cff;font-size:12px;"><span style="color:#0f8200;" class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;info@dhanguru.com   ,  bill@dhanguru.com</p>
                                <p style="color:#0f9cff;font-size:12px;"><span style="color:#0f8200;" class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;support@dhanguru.com  ,  rohan@dhanguru.com</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" style="color:#000000;padding-right:0px;">
                    <div style="background-color: #eaeaea;">
                    <legend style="width:100%;height:15%;background:#0f8200;color:#FFFFFF;font-size:180%;padding:0 0% 0 0;"><b>Service Cities</b></legend>
                    <!-- <div class="container"> -->
                    <div class="row">
                        <div class="col-sm-4">
                            <ul style="padding-left:0px;list-style-type:none;">
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Delhi</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Kanpur</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Pune</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Meerut</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Noida</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Palwal</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Gurgaun</a></li>
                                <li style="padding-bottom:0px;"><a href="#" style="color:#0f9cff;">Faridabad</a></li>
                            </ul>
                        </div>

                        <div class="col-sm-4">
                            <ul style="padding-left:0px;list-style-type:none;">
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Delhi</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Hydrabad</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Pune</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Meerut</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Noida</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Palwal</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Gurgaun</a></li>
                                <li style="padding-bottom:0px;"><a href="#" style="color:#0f9cff;">Faridabad</a></li>
                            </ul>
                        </div>

                        <div class="col-sm-4">
                            <ul style="padding-left:0px;list-style-type:none;">
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Delhi</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Kanpur</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Pune</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Mumbai</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Banglore</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Meerut</a></li>
                                <li style="padding-bottom:10px;"><a href="#" style="color:#0f9cff;">Noida</a></li>
                                <li style="padding-bottom:0px;"><a href="#" style="color:#0f9cff;">Gurgaun</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script>
    $(".cu").on("click", function( e ) {
        e.preventDefault();
        $("body, html").animate({
            scrollTop: $( $(this).attr('href') ).offset().top
        }, 3000);
    });
</script>

<br>
<br>




<footer>
    <div class="footer container-fluid" style="background-color:#032a00;"><!-- 0f8200 -->
        <%--<div class="mainfooter" style="margin-top:15px;">--%>
        <div class="row" style="margin-top:15px;">
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
                <legend style="border:0 solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Information</b></legend>
                <div style="text-align:center;box-shadow: 0 0 15px white;height:300px;width:100%;">
                    <ul style="padding-left:0;padding-top:0;margin-left:0;list-style-type: none;">
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
            <div class="col-md-3 container-fliud" style="height:300px;">
                <legend style="border:0 solid #0f8200;width:100%;height:12%;background:#5bc0de;color:#FFFFFF;font-size:180%;padding:0 0 0 5%;"><b>Stock Market</b></legend>
                <div style="text-align:center;box-shadow: 0 0 15px white;height:300px;width:100%;">
                    <%--dont use it <script src="http://markets.financialcontent.com/stocks?Module=snapshot&Ticker=$COMP+$SPX+GOOG+FB+MCD&Output=JS"></script>--%>
                    <%--<iframe src="http://www.appuonline.com/gadgets/currency.php" height="300" frameborder="0" scrolling="no"></iframe>--%><%--width="360"--%>
                    <%--<script src="http://markets.financialcontent.com/freewidget?Module=watchlist2&Output=JS"></script>--%>
                    <%--<iframe class="embed-responsive-item" src="http://www.appuonline.com/gadgets/global_market.php" width="310" height="300" frameborder="0" scrolling="no"></iframe>--%><%-- width="300"--%>
                    <%--<iframe src="http://www.appuonline.com/gadgets/currency.php" width="310" height="237" frameborder="0"  scrolling="no"></iframe>--%><%--width="360"--%>
                    <div><iframe src="http://www.appuonline.com/gadgets/marketwatch-g.html" width="310" height="300" frameborder="0" scrolling="yes"></iframe></div>
                </div>
            </div>
        </div>

        <br clear="all" />
        </center>
        <%--</div>--%>
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








<!-- Example from http://www.building58.com/examples/tabSlideOut.html -->
<script src="resources/js/jquery.tabSlideOut.v1.3.js"></script>

<script type="text/javascript">


    $(function(){
        $('.checkCity').tabSlideOut({
            tabHandle: '.handleCheckCity',                     //class of the element that will become your tab
            pathToTabImage: 'resources/images/verifyServiceCity.jpg', //path to the image for the tab //Optionally can be set using css
            imageHeight: '122px',                     //height of tab image           //Optionally can be set using css
            imageWidth: '40px',                       //width of tab image            //Optionally can be set using css
            tabLocation: 'right',                      //side of screen where tab lives, top, right, bottom, or left
            speed: 300,                               //speed of animation
            action: 'click',                          //options: 'click' or 'hover', action to trigger animation
            topPos: '45%',/* 100px */                          //position from the top/ use if tabLocation is left or right
            leftPos: '20px',                          //position from left/ use if tabLocation is bottom or top
            fixedPosition: false                      //options: true makes it stick(fixed position) on scroll
        });
    });

</script>


<style type="text/css">
    .checkCity {
        padding: 0 20px 20px 20px;
        width: 250px;
        background: #ccc;
        border: 1px solid #29216d;
    }
</style>


<div class="checkCity">
    <a class="handleCheckCity" href="http://link-for-non-js-users.html">Verify Service City</a>
    <h3>Verify Service City</h3>
    <form action="${pageContext.request.contextPath}/verifyServiceCity" method="post">
        <div style="padding-right: 10px;padding-left: 5px;">
            <div class="form-group" style="padding-top: 3px;">
                <input type="number" class="form-control" name="verifyPincode" placeholder="ENTER PINCODE" required>
            </div>
            <div class="form-group" style="padding-top: 5px; padding-right: 10px; padding-right: 10px;">
                <input  name="submit" type="submit" value="Submit" class="btn btn-info" style="color:#FFFFFF;font-size:20px;height: 50px">
            </div>
        </div>
    </form>

</div>







<script type="text/javascript">
    $(function(){
        $('.feedback').tabSlideOut({
            tabHandle: '.handleFeedback',                     //class of the element that will become your tab
            pathToTabImage: 'resources/images/feedback.jpg', //path to the image for the tab //Optionally can be set using css
            imageHeight: '122px',                     //height of tab image           //Optionally can be set using css
            imageWidth: '40px',                       //width of tab image            //Optionally can be set using css
            tabLocation: 'right',                      //side of screen where tab lives, top, right, bottom, or left
            speed: 300,                               //speed of animation
            action: 'click',                          //options: 'click' or 'hover', action to trigger animation
            topPos: '20%',/* 100px */                          //position from the top/ use if tabLocation is left or right
            leftPos: '20px',                          //position from left/ use if tabLocation is bottom or top
            fixedPosition: true                      //options: true makes it stick(fixed position) on scroll
        });

    });


</script>








<style type="text/css">

    .feedback {
        padding: 0 20px 10px 20px;
        width: 350px;/*250px;*/
        background: #ccc;
        border: 1px solid #29216d;
    }



</style>

<div class="container">
    <div class="feedback">
        <a class="handleFeedback" href="http://link-for-non-js-users.html">Feedback</a>
        <h3>Feedback</h3>
        <form action="${pageContext.request.contextPath}/feedback" method="post">
            <div style="padding-right: 10px;padding-left: 5px;">
                <div class="form-group" style="padding-top: 3px;">
                    <input type="text" class="form-control" name="name" placeholder="ENTER NAME" required>
                </div>
                <div class="form-group" style="padding-top: 3px;">
                    <input type="number" class="form-control" name="phone" placeholder="CONTACT NUMBER" required>
                </div>
                <div class="form-group" style="padding-top: 3px;">
                    <input type="email" class="form-control" name="email" placeholder="EMAIL ID" required>
                </div>
                <div class="form-group" style="padding-top: 3px;">
                    <input type="text" class="form-control" name="subjectFeedback" placeholder="SUBJECT" required>
                </div>
                <div class="form-group" style="padding-top: 3px;">
                    <textarea class="form-control" name="feedbackText" rows="4" cols="50" placeholder="EXPERIENCE" required></textarea>
                </div>
                <div class="form-group" style="align:center;text-align:center;padding-top: 5px; padding-right: 10px; padding-right: 10px;">
                    <input id="submit" name="submit" type="submit" value="Submit" class="btn btn-info" style="color:#FFFFFF;"><%--font-size:20px;height: 50px;btn-xl btn-block --%>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
