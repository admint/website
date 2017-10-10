<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="static java.util.Calendar.DAY_OF_WEEK" %>
<%
    Calendar c = Calendar.getInstance();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    String currentDate = df.format(c.getTime());

    Calendar cal = Calendar.getInstance();
    cal.add(Calendar.DATE, -1);

    String yeteday = df.format(cal.getTime());

    cal.add(Calendar.DATE, -7);
    String weekday = df.format(cal.getTime());

    cal.add(Calendar.DATE, -30);
    String mount = df.format(cal.getTime());

%>

<!DOCTYPE html>
<html lang="en">


<head>

    <style>
        /* Loading Spinner */
        .spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
    </style>


    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title> Carestream </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicons -->

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/icons/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/images/icons/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/images/icons/favicon.png">



    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">


    <!-- HELPERS -->

    <link rel="stylesheet" type="text/css" href="assets/helpers/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/backgrounds.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/boilerplate.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/border-radius.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/grid.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/page-transitions.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/spacing.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/typography.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/utils.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/colors.css">

    <!-- ELEMENTS -->

    <link rel="stylesheet" type="text/css" href="assets/elements/badges.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/buttons.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/content-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/dashboard-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/forms.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/images.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/info-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/invoice.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/loading-indicators.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/menus.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/panel-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/response-messages.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/responsive-tables.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/ribbon.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/social-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/tables.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/tile-box.css">
    <link rel="stylesheet" type="text/css" href="assets/elements/timeline.css">



    <!-- ICONS -->

    <link rel="stylesheet" type="text/css" href="assets/icons/fontawesome/fontawesome.css">
    <link rel="stylesheet" type="text/css" href="assets/icons/linecons/linecons.css">
    <link rel="stylesheet" type="text/css" href="assets/icons/spinnericon/spinnericon.css">


    <!-- WIDGETS -->

    <link rel="stylesheet" type="text/css" href="assets/widgets/accordion-ui/accordion.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/calendar/calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/carousel/carousel.css">

    <link rel="stylesheet" type="text/css" href="assets/widgets/charts/justgage/justgage.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/charts/morris/morris.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/charts/piegage/piegage.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/charts/xcharts/xcharts.css">

    <link rel="stylesheet" type="text/css" href="assets/widgets/chosen/chosen.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/colorpicker/colorpicker.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/datatable/datatable.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/datepicker/datepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/datepicker-ui/datepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/dialog/dialog.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/dropdown/dropdown.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/dropzone/dropzone.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/file-input/fileinput.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/input-switch/inputswitch.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/input-switch/inputswitch-alt.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/ionrangeslider/ionrangeslider.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/jcrop/jcrop.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/jgrowl-notifications/jgrowl.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/loading-bar/loadingbar.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/maps/vector-maps/vectormaps.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/markdown/markdown.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/modal/modal.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/multi-select/multiselect.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/multi-upload/fileupload.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/nestable/nestable.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/noty-notifications/noty.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/popover/popover.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/pretty-photo/prettyphoto.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/progressbar/progressbar.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/range-slider/rangeslider.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/slidebars/slidebars.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/slider-ui/slider.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/summernote-wysiwyg/summernote-wysiwyg.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/tabs-ui/tabs.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/theme-switcher/themeswitcher.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/timepicker/timepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/tocify/tocify.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/tooltip/tooltip.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/touchspin/touchspin.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/uniform/uniform.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/wizard/wizard.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/xeditable/xeditable.css">

    <!-- SNIPPETS -->

    <link rel="stylesheet" type="text/css" href="assets/snippets/chat.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/files-box.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/login-box.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/notification-box.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/progress-box.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/todo.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/user-profile.css">
    <link rel="stylesheet" type="text/css" href="assets/snippets/mobile-navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/widgets/uniform/uniform.css">
    <!-- APPLICATIONS -->

    <link rel="stylesheet" type="text/css" href="assets/applications/mailbox.css">

    <!-- Admin theme -->

    <link rel="stylesheet" type="text/css" href="assets/themes/admin/layout.css">
    <link rel="stylesheet" type="text/css" href="assets/themes/admin/color-schemes/default.css">

    <!-- Components theme -->

    <link rel="stylesheet" type="text/css" href="assets/themes/components/default.css">
    <link rel="stylesheet" type="text/css" href="assets/themes/components/border-radius.css">

    <!-- Admin responsive -->

    <link rel="stylesheet" type="text/css" href="assets/helpers/responsive-elements.css">
    <link rel="stylesheet" type="text/css" href="assets/helpers/admin-responsive.css">

    <!-- JS Core -->

    <script type="text/javascript" src="assets/js-core/jquery-core.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-core.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-widget.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-mouse.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-position.js"></script>
    <!--<script type="text/javascript" src="assets/js-core/transition.js"></script>-->
    <script type="text/javascript" src="assets/js-core/modernizr.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-cookie.js"></script>

    <script type="text/javascript" src="assets/widgets/uniform/uniform.js"></script>
    <script type="text/javascript" src="assets/widgets/uniform/uniform-demo.js"></script>


    <script type="text/javascript">
        $(window).load(function(){
            setTimeout(function() {
                $('#loading').fadeOut( 400, "linear" );
            }, 300);
        });
    </script>



</head>


<body>
<%
    Connection connect = null;
    Statement s = null;
    Statement p = null;
    Statement h = null;
    Statement hp = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");

        connect =  DriverManager.getConnection("jdbc:mysql://43.241.57.10/drycliniqu_pac" +
                "?user=drycliniqu_pac&password=mint0326");

        s = connect.createStatement();
        p = connect.createStatement();
        h = connect.createStatement();
        %>
<div id="sb-site">

    <div id="loading">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>

    <div id="page-wrapper">
        <div id="page-header" class="bg-gradient-9">
            <div id="mobile-navigation">
                <button id="nav-toggle" class="collapsed" data-toggle="collapse" data-target="#page-sidebar"><span></span></button>
                <a href="index-2.html" class="logo-content-small" title="MonarchUI"></a>
            </div>
            <div id="header-logo" class="logo-bg">
                <a href="/Home" class="logo-content-big" title="MonarchUI">
                    CARESTREAM
                    <span>Simple and accurate diagnostic reporting</span>
                </a>
                <a href="/Home" class="logo-content-small" title="MonarchUI">
                    CARESTREAM
                    <span>Simple and accurate diagnostic reporting</span>
                </a>
                <a id="close-sidebar" href="#" title="Close sidebar">
                    <i class="glyph-icon icon-angle-left"></i>
                </a>
            </div>
            <div id="header-nav-left">
                <div class="user-account-btn dropdown">
                    <a href="#" title="My Account" class="user-profile clearfix" data-toggle="dropdown">
                        <img width="28" src="assets/image-resources/people/testimonial2.jpg" alt="Profile image">
                        <span>Displayname</span>
                        <i class="glyph-icon icon-angle-down"></i>
                    </a>
                    <div class="dropdown-menu float-left">
                        <div class="box-sm">
                            <div class="login-box clearfix">
                                <div class="user-img">

                                    <img src="assets/image-resources/people/testimonial2.jpg" alt="">
                                </div>
                                <div class="user-info">
                            <span>
                                Displayname Barnes
                                <i>Administarot</i>
                            </span>
                                    <a href="#" title="Edit profile">Edit profile</a>
                                    <a href="#" title="View notifications">View notifications</a>
                                </div>
                            </div>


                            <div class="pad5A button-pane button-pane-alt text-center">
                                <a href="#" class="btn display-block font-normal btn-danger">
                                    <i class="glyph-icon icon-power-off"></i>
                                    Logout
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- #header-nav-left -->

            <div id="header-nav-right">

                <a href="#" class="hdr-btn" id="fullscreen-btn" title="Fullscreen">
                    <i class="glyph-icon icon-arrows-alt"></i>
                </a>

                <div class="dropdown" id="notifications-btn">
                    <a data-toggle="dropdown" href="#" title="">
                        <span class="small-badge badge-danger"></span>
                        <i class="glyph-icon icon-linecons-megaphone"></i>
                    </a>
                    <div class="dropdown-menu box-md float-right">

                        <div class="popover-title display-block clearfix pad10A">
                            Notifications

                        </div>
                        <div class="scrollable-content scrollable-slim-box">
                            <ul class="no-border notifications-box">
                                <li>
                                    <span class="bg-danger icon-notification glyph-icon icon-bullhorn"></span>
                                    <span class="notification-text">Login Susessce  notification</span>
                                    <div class="notification-time">
                                        a few seconds ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-warning icon-notification glyph-icon icon-users"></span>
                                    <span class="notification-text font-blue">This is a warning notification</span>
                                    <div class="notification-time">
                                        <b>15</b> minutes ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-green icon-notification glyph-icon icon-sitemap"></span>
                                    <span class="notification-text font-green">A success message example.</span>
                                    <div class="notification-time">
                                        <b>2 hours</b> ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-azure icon-notification glyph-icon icon-random"></span>
                                    <span class="notification-text">This is an error notification</span>
                                    <div class="notification-time">
                                        a few seconds ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-warning icon-notification glyph-icon icon-ticket"></span>
                                    <span class="notification-text">This is a warning notification</span>
                                    <div class="notification-time">
                                        <b>15</b> minutes ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-blue icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text font-blue">Alternate notification styling.</span>
                                    <div class="notification-time">
                                        <b>2 hours</b> ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-purple icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text">This is an error notification</span>
                                    <div class="notification-time">
                                        a few seconds ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-warning icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text">This is a warning notification</span>
                                    <div class="notification-time">
                                        <b>15</b> minutes ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-green icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text font-green">A success message example.</span>
                                    <div class="notification-time">
                                        <b>2 hours</b> ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-purple icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text">This is an error notification</span>
                                    <div class="notification-time">
                                        a few seconds ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                                <li>
                                    <span class="bg-warning icon-notification glyph-icon icon-user"></span>
                                    <span class="notification-text">This is a warning notification</span>
                                    <div class="notification-time">
                                        <b>15</b> minutes ago
                                        <span class="glyph-icon icon-clock-o"></span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="pad10A button-pane button-pane-alt text-center">
                            <a href="#" class="btn btn-primary" title="View all notifications">
                                View all notifications
                            </a>
                        </div>
                    </div>
                </div>



                <a class="header-btn" id="logout-btn" href="/Logout" title="Lockscreen page example">
                    <i class="glyph-icon icon-linecons-lock"></i>
                </a>

            </div><!-- #header-nav-right -->

        </div>
        <div id="page-sidebar">
            <div class="scroll-sidebar">


                <ul id="sidebar-menu">

                    <li class="header"><span>ADMINISTRATORS</span></li>
                    <li>
                        <a href="#" title="Elements">
                            <i class="glyph-icon icon-linecons-diamond"></i>
                            <span>General</span>
                        </a>
                        <div class="sidebar-submenu">

                            <ul>
                                <li><a href="#" title=""><span>Type of Server</span></a></li>
                                <li><a href="#" title=""><span>Preferences</span></a></li>

                            </ul>

                        </div><!-- .sidebar-submenu -->
                    </li>
                    <li>
                        <a href="#" title="Widgets">
                            <i class="glyph-icon icon-linecons-diamond"></i>
                            <span>Hospital Name</span>
                        </a>
                        <div class="sidebar-submenu"></div>
                    </li>

                    <li>
                        <a href="#" title="Dashboard boxes">
                            <i class="glyph-icon icon-linecons-lightbulb"></i>
                            <span>Local Viewer SetUp</span>

                        </a>
                        <div class="sidebar-submenu">

                            <ul>
                                <li><a href="#" title=""><span>Patient ID URL</span></a></li>
                                <li><a href="#" title=""><span>Series ID URL</span></a></li>
                                <li><a href="#" title=""><span>User Account</span></a></li>
                            </ul>

                        </div><!-- .sidebar-submenu -->
                    </li>

                    <li>
                        <a href="#" title="Forms UI">
                            <i class="glyph-icon icon-linecons-eye"></i>
                            <span>Web Viewer Setup</span>
                        </a>
                        <div class="sidebar-submenu">

                            <ul>
                                <li><a href="#" title=""><span>Patient ID URL</span></a></li>
                                <li><a href="#" title=""><span>Series ID URL</span></a></li>
                                <li><a href="#" title=""><span>Study ID URL</span></a></li>
                            </ul>

                        </div><!-- .sidebar-submenu -->
                    </li>
                    <li class="header"><span>USER</span></li>
                    <li>
                        <a href="#" title="Advanced tables">
                            <i class="glyph-icon icon-linecons-megaphone"></i>
                            <span>General</span>
                        </a>

                    </li>
                    <li>
                        <a href="#" title="Charts">
                            <i class="glyph-icon icon-linecons-paper-plane"></i>
                            <span>Request For Account</span>
                        </a>

                    </li>
                    <li>
                        <a href="#" title="Maps">
                            <i class="glyph-icon icon-linecons-sound"></i>
                            <span>Report Summary</span>
                        </a>

                    </li>

                    <li class="header"><span>RADIOLOGIST</span></li>
                    <li>
                        <a href="#" title="Pages">
                            <i class="glyph-icon icon-linecons-fire"></i>
                            <span>Report Summary</span>

                        </a>

                    </li>

                </ul><!-- #sidebar-menu -->


            </div>
        </div>
        <div id="page-content-wrapper">
            <div id="page-content">

                <div class="container">
                    <div class="panel">
                        <div class="panel-body">
                            <%
                                String keyword = "";
                                String startDate = "";
                                String endDate = "";
                                String condition ="";
                                String modality ="";
                                String hospital ="";
                                if(request.getParameter("txtKeyword") != null) {
                                    keyword = request.getParameter("txtKeyword");
                                }
                                if(request.getParameter("startDate") != "" && request.getParameter("startDate") != null) {
                                startDate = request.getParameter("startDate");
                                endDate = request.getParameter("endDate");
                                condition += "and (a.study_datetime BETWEEN cast('"+startDate+" 00:00:00' as datetime) AND cast('"+endDate+" 23:59:50' as datetime)) ";
                                 }
                                if(request.getParameter("modality") != "" && request.getParameter("modality") != null) {
                                    modality = request.getParameter("modality");

                                    condition += "and a.mods_in_study COLLATE UTF8_GENERAL_CI LIKE  '%"+modality+"'";
                                }
                                if(request.getParameter("hospital") != "" && request.getParameter("hospital") != null) {
                                    hospital = request.getParameter("hospital");

                                    String hsql = "SELECT study_fk   FROM series  where institution COLLATE UTF8_GENERAL_CI Like " +
                                            " '%"+hospital+"' group by study_fk ";
                                    hp = connect.createStatement();

                                    ResultSet hpec = hp.executeQuery(hsql);

                                    String m = "";


                                    int j = 0;
                                    while(hpec.next()){
                                         m += hpec.getInt("study_fk")+",";




                                         j++;

                                    }
                                    int num = (j*2)-1;

                                    condition +=" and a.pk IN("+m.substring(0,num)+")";




                                }

                            %>
                            <form id="fsearch" name="frm" action="index.jsp" method="GET">

                                <input type="hidden" id="startDate" name="startDate" value="<%=startDate%>">
                                <input type="hidden" id="endDate" name="endDate" value="<%=endDate%>">
                                <input type="hidden" id="modality" name="modality" value="">
                                <input type="hidden" id="hospital" name="hospital" value="">
                                <div class="col-sm-5 ">
                                    <div class="input-group">
                                        <input type="text"  class="form-control" value="<%=keyword%>" id="txtkeyword" name="txtKeyword" placeholder="Enter patient name/ID/Accsion" >
                                        <span class="input-group-btn">
                                        <button class="btn btn-primary" type="submit">Search</button>
                                    </span>
                                    </div>
                                </div> </form>
                                <div class="col-sm-7">
                                    <div class="dropdown">
                                        <a href="#" title="" class="btn btn btn-primary" onclick="clearF()" ><i class="glyph-icon  icon-recycle"></i> Clear All</a>
                                    </div>
                                    <div class="dropdown">

                                        <a href="#" title="" class="btn btn btn-primary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="glyph-icon icon-calendar"></i>
                                            <span>Study Date</span>
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" style="display: none;">
                                            <li><a href="#" onclick="postDate('<%=currentDate%>','<%=currentDate%>')">Today</a></li>
                                            <li><a href="#" onclick="postDate('<%=yeteday%>','<%=currentDate%>')">Yester Day</a></li>
                                            <li><a href="#" onclick="postDate('<%=weekday%>','<%=currentDate%>')">Last 7 Day</a></li>
                                            <li style="width: 200px;"><a href="#">Any Day  </a></li>
                                            <li class="divider"></li>
                                            <li><div class="input-prepend input-group">
                                    <span class="add-on input-group-addon">
                                        <i class="glyph-icon icon-calendar"></i>
                                    </span>
                                                <input type="text" name="daterangepicker-example" id="daterangepicker-example" class="form-control" value="<%=weekday%> - <%=currentDate%>">
                                            </div></li>
                                        </ul>
                                    </div>
                                    <div class="dropdown">
                                        <a href="#" title="" class="btn btn btn-primary" data-toggle="dropdown" aria-expanded="false">
                                            <i class="glyph-icon  icon-file-excel-o"></i> Modality <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" style="display: none;">
                                            <li><a href="#" onclick="postModality(null)">All</a></li>
                                            <li><a href="#" onclick="postModality('CR')">CR</a></li>
                                            <li><a href="#" onclick="postModality('CT')">CT</a></li>
                                            <li><a href="#" onclick="postModality('DX')">DX</a></li>

                                        </ul>
                                    </div>
                                    <div class="dropdown">
                                        <a href="#" title="" class="btn btn btn-primary" data-toggle="dropdown" aria-expanded="false">
                                            <i class="glyph-icon  icon-hospital-o"></i>
                                            Hospital Name <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" style="display: none;">
                                            <li><a href="#" onclick="postInstitution(null)">All</a></li>
                                            <%
                                                String sqlh = "SELECT institution FROM series group by institution";
                                                ResultSet hec = h.executeQuery(sqlh);
                                                while((hec!=null) && (hec.next())){



                                            %>
                                            <li><a href="#" onclick="postInstitution('<%=hec.getString("institution")%>')"><%=hec.getString("institution")%></a></li>
                                            <%}%>
                                        </ul>
                                    </div>

                                </div>

                        </div>

                        <div class="panel-body">

                            <div>

                                <div class="example-box-wrapper">
                                    <div class="mail-toolbar clearfix">
                                    <div class="float-left">
                                        <a href="#" title="" class="btn btn-default mrg5R">
                                            <i class="glyph-icon font-size-11 icon-refresh"></i>
                                        </a>
                                        <div class="dropdown">
                                            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
                                                <i class="glyph-icon icon-cog"></i>
                                                <i class="glyph-icon icon-chevron-down"></i>
                                            </a>
                                            <ul class="dropdown-menu float-right" style="display: none;">

                                                <li>
                                                    <a href="#" title="">
                                                        <i class="glyph-icon icon-edit mrg5R"></i>
                                                        Edit
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" title="">
                                                        <i class="glyph-icon icon-calendar mrg5R"></i>
                                                        Report
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" title="">
                                                        <i class="glyph-icon icon-download mrg5R"></i>
                                                        Download
                                                    </a>
                                                </li>
                                                <li class="divider"></li>
                                                <li>
                                                    <a href="#" class="font-red" title="">
                                                        <i class="glyph-icon icon-remove mrg5R"></i>
                                                        Delete
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="float-right">
                                        <div class="btn-toolbar">
                                            <div class="btn-group">
                                                <div class="size-md mrg10R">
                                                    1 to 11 of 21 entries
                                                </div>
                                            </div>
                                            <div class="btn-group">
                                                <a href="#" class="btn btn-default">
                                                    <i class="glyph-icon icon-angle-left"></i>
                                                </a>
                                                <a href="#" class="btn btn-default">
                                                    <i class="glyph-icon icon-angle-right"></i>
                                                </a>
                                            </div>
                                            <div class="btn-group mrg15L">
                                                <a href="#" class="btn btn-primary">
                                                    <i class="glyph-icon icon-list opacity-80"></i>
                                                    <i class="glyph-icon icon-caret-down"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                    <table   style="font-size: 11px;" width="100%" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered font-black" id="myTable">
                                        <thead>
                                        <tr >
                                            <th width="10">
                                                <div class="checker" id="uniform-mail-checkbox-1"><span class="">
                                                <input type="checkbox" id="mail-checkbox-1" class="custom-checkbox">
                                                    <i class="glyph-icon icon-check"></i></span></div>
                                            </th>
                                            <th class="all"  width="300">Patient Name</th>
                                            <th class="all" width="200">Patient ID</th>

                                            <th  class="text-center all" width="10">Sex</th>
                                            <th class="text-center all">Modality</th>

                                            <th class="text-center all" >Accession No</th>
                                            <th class="all" width="200">Study Description</th>
                                            <th  class="text-center all">Series</th>
                                            <th class="all" >Study Date</th>
                                            <th  class="all text-center" width="10">Report</th>
                                            <th  class="none text-center" width="10">Radiologist</th>
                                        </tr>


                                        </thead>
                                        <tbody >

                                        <%

                                                String sql = "SELECT p.pk as ppk, a.pk as sfk, p.*,a.*,(select count(s.pk) from series s where s.study_fk=a.pk) as sno " +
                                                        ",(SELECT report_status FROM report r WHERE r.study_pk = a.pk) as reportst "+
                                                        ",(SELECT radiology FROM report r WHERE r.study_pk = a.pk) as radiology  "+
                                                        "FROM patient p inner join study a on p.pk=a.patient_fk"+
                                                        " WHERE (p.pat_name COLLATE UTF8_GENERAL_CI like '%"+  keyword + "%' OR p.pat_id COLLATE UTF8_GENERAL_CI LIKE '%"+keyword+"%' OR a.accession_no COLLATE UTF8_GENERAL_CI LIKE '%"+keyword+"%') "+condition;


                                                     sql +=   " ORDER BY p.pk ASC";
                                                //out.println(sql);
                                                ResultSet rec = s.executeQuery(sql); %>
                                        <script>
                                            $(document).ready(function(){
                                                $(".lt").click( function() {
                                                    $(this).closest('tr').next('tr').toggle('show');
                                                });
                                                $(".sl").click( function() {
                                                    $(this).closest('tr').next('tr').toggle('show');
                                                });
                                            });
                                        </script>
                                        <%
                                            while((rec!=null) && (rec.next())) { %>
                                        <tr >
                                            <td width="10"><div class="checker" id="uniform-mail-checkbox-1"><span class="">
                                                <input type="checkbox" id="mail-checkbox-1" class="custom-checkbox">
                                                    <i class="glyph-icon icon-check"></i></span></div></td>
                                            <td valign="middle"><i class="glyph-icon lt tooltip-button btn btn-default font-size-16 btn-round btn-xs  icon-plus-square-o" title="" data-original-title="Series(<%=rec.getString("sno")%>)"></i>  <%=rec.getString("pat_name")%></td>
                                            <td><%=rec.getString("pat_id")%></td>
                                            <td class="text-center"><%=rec.getString("pat_sex")%></td>
                                            <td class="text-center"><%=rec.getString("mods_in_study")%></td>

                                            <td class="text-center" ><%=rec.getString("accession_no")%></td>

                                            <td ><%=rec.getString("study_desc")%></td>
                                            <td class="text-center"><%=rec.getString("sno")%></td>
                                            <td ><%=rec.getString("study_datetime")%></td>
                                            <td valign="middle" class="text-center">
                                                <a href="#" class="btn btn-round btn-xs <% if(rec.getInt("reportst")==1){out.println("btn-danger");}else if(rec.getInt("reportst")==2){out.println("btn-yellow");}else if(rec.getInt("reportst")==3){out.println("btn-success");}else{out.println("hide");} %>">
                                                <i class="glyph-icon icon-file"> </i></a></td>
                                            <td class="text-center"><%=rec.getString("radiology")%></td>

                                        </tr>
                                        <tr id="subt<%=rec.getInt("ppk")%>" style="display: none;" class="pad0A">

                                            <td colspan="11"  class="pad0A ">

                                                                <table class="table table-bordered mrg0A font-size-11 table-hover font-black">
                                                                    <thead>
                                                                        <tr>
                                                                            <td width="100" style="border-top:none;border-left: none;border-bottom: none"></td>
                                                                            <td class="bg-azure" width="10"><div class="checker" id="uniform-mail-checkbox-1"><span class="">
                                                <input type="checkbox" id="mail-checkbox-1" class="custom-checkbox">
                                                    <i class="glyph-icon icon-check"></i></span></div></td>
                                                                            <td class="bg-azure">Series No.</td>
                                                                            <td class="bg-azure">Series Description</td>
                                                                            <td class="bg-azure">Modality</td>
                                                                            <td class="bg-azure">Body Part</td>
                                                                            <td class="bg-azure">Study Date</td>
                                                                            <td class="bg-azure">Images</td>
                                                                            <td class="bg-azure">Institution</td>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <%
                                                                        String sqlS = "select * from series where study_fk="+rec.getInt("sfk");
                                                                        ResultSet pec = p.executeQuery(sqlS);
                                                                        while((pec!=null) && (pec.next())){



                                                                    %>
                                                                    <tr class="">
                                                                        <td style="border-top:none;border-left: none;border-bottom: none"></td>
                                                                        <td width="10"><div class="checker" id="uniform-mail-checkbox-1"><span class="">
                                                <input type="checkbox" id="mail-checkbox-1" class="custom-checkbox">
                                                    <i class="glyph-icon icon-check"></i></span></div></td>
                                                                        <td class="text-center"><%=pec.getString("series_no")%></td>
                                                                        <td ><%=pec.getString("series_desc")%></td>
                                                                        <td class="text-center"><%=pec.getString("modality")%></td>
                                                                        <td class="text-center"><%=pec.getString("body_part")%></td>
                                                                        <td ><%=pec.getString("pps_start")%></td>
                                                                        <td class="text-center"><%=pec.getString("num_instances")%></td>
                                                                        <td ><%=pec.getString("institution")%></td>
                                                                    </tr>


                                                                    <% } %>
                                                                    </tbody>
                                                                </table>

                                            </td>
                                        </tr>
                                        <%
                                                }

                                            } catch (Exception e) {
                                                // TODO Auto-generated catch block
                                                out.println(e.getMessage());
                                                e.printStackTrace();
                                            }

                                            try {
                                                if(s!=null){
                                                    s.close();
                                                    connect.close();
                                                }
                                            } catch (SQLException e) {
                                                // TODO Auto-generated catch block
                                                out.println(e.getMessage());
                                                e.printStackTrace();
                                            }
                                        %>

                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>


    <!-- WIDGETS -->

    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.js"></script>

    <!-- Bootstrap Dropdown -->

    <!-- <script type="text/javascript" src="assets/widgets/dropdown/dropdown.js"></script> -->

    <!-- Bootstrap Tooltip -->

    <!-- <script type="text/javascript" src="assets/widgets/tooltip/tooltip.js"></script> -->

    <!-- Bootstrap Popover -->

    <!-- <script type="text/javascript" src="assets/widgets/popover/popover.js"></script> -->

    <!-- Bootstrap Progress Bar -->

    <script type="text/javascript" src="assets/widgets/progressbar/progressbar.js"></script>

    <!-- Bootstrap Buttons -->

    <!-- <script type="text/javascript" src="assets/widgets/button/button.js"></script> -->

    <!-- Bootstrap Collapse -->

    <!-- <script type="text/javascript" src="assets/widgets/collapse/collapse.js"></script> -->

    <!-- Superclick -->

    <script type="text/javascript" src="assets/widgets/superclick/superclick.js"></script>

    <!-- Input switch alternate -->

    <script type="text/javascript" src="assets/widgets/input-switch/inputswitch-alt.js"></script>

    <!-- Slim scroll -->

    <script type="text/javascript" src="assets/widgets/slimscroll/slimscroll.js"></script>

    <!-- Slidebars -->

    <script type="text/javascript" src="assets/widgets/slidebars/slidebars.js"></script>
    <script type="text/javascript" src="assets/widgets/slidebars/slidebars-demo.js"></script>

    <!-- PieGage -->

    <script type="text/javascript" src="assets/widgets/charts/piegage/piegage.js"></script>
    <script type="text/javascript" src="assets/widgets/charts/piegage/piegage-demo.js"></script>

    <!-- Screenfull -->

    <script type="text/javascript" src="assets/widgets/screenfull/screenfull.js"></script>

    <!-- Content box -->

    <script type="text/javascript" src="assets/widgets/content-box/contentbox.js"></script>

    <!-- Overlay -->

    <script type="text/javascript" src="assets/widgets/overlay/overlay.js"></script>

    <!-- Widgets init for demo -->

    <script type="text/javascript" src="assets/js-init/widgets-init.js"></script>

    <!-- Theme layout -->

    <script type="text/javascript" src="assets/themes/admin/layout.js"></script>

    <!-- Theme switcher -->

    <script type="text/javascript" src="assets/widgets/theme-switcher/themeswitcher.js"></script>
    <!-- Bootstrap Datepicker -->

    <!--<link rel="stylesheet" type="text/css" href="assets/widgets/datepicker/datepicker.css">-->
    <script type="text/javascript" src="assets/widgets/datepicker/datepicker.js"></script>
    <script type="text/javascript">
        /* Datepicker bootstrap */



    </script>

    <!-- jQueryUI Datepicker -->

    <!--<link rel="stylesheet" type="text/css" href="assets/widgets/datepicker-ui/datepicker.css">-->
    <script type="text/javascript" src="assets/widgets/datepicker-ui/datepicker.js"></script>
    <script type="text/javascript" src="assets/widgets/datepicker-ui/datepicker-demo.js"></script>

    <!-- Bootstrap Daterangepicker -->

    <!--<link rel="stylesheet" type="text/css" href="assets/widgets/daterangepicker/daterangepicker.css">-->
    <script type="text/javascript" src="assets/widgets/daterangepicker/moment.js"></script>
    <script type="text/javascript" src="assets/widgets/daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="assets/widgets/daterangepicker/daterangepicker-demo.js"></script>

    <!-- Bootstrap Timepicker -->

    <!--<link rel="stylesheet" type="text/css" href="assets/widgets/timepicker/timepicker.css">-->
    <script type="text/javascript" src="assets/widgets/timepicker/timepicker.js"></script>
    <script type="text/javascript">
        function postDate(sD,eD) {
            $('#startDate').val(sD);
            $('#endDate').val(eD);
            $('#fsearch').submit();

        }
        function postModality(mo){
            $('#modality').val(mo);
            $('#fsearch').submit();
        }
        function postInstitution(mo){
            $('#hospital').val(mo);
            $('#fsearch').submit();
        }
        function clearF() {
            $('#startDate').val("");
            $('#endDate').val("");
            $('#hospital').val("");
            $('#modality').val("");
            $('#txtkeyword').val("");
            $('#fsearch').submit();

        }
    </script>
</div>
</body>


</html>