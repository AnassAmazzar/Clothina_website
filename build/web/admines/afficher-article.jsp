<%-- 
    Document   : afficher-article
    Created on : 23 mai 2022, 10:45:41
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connpackage.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="packageadmin.*"%>
<!DOCTYPE html>
<%
    Connection con = ConnClothina.getConn();
    ResultSet R;
    R = con.createStatement().executeQuery("select ImageArt, TitreArt from Article");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>afficher-article</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" rel="stylesheet">
        <link href="./plugins/icheck-bootstrap/ichecke-bootstrap.min.css" rel="stylesheet">

        <link href="./plugins/bootstrap-colorpicker/css/cssadmine.css" rel="stylesheet">
        <link href="./plugins/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./plugins/jqvmap/jqvmap.min.css">
        
        <link rel="stylesheet" href="./plugins/tempusdominus-bootstrap-4/css/tempusdominusbootstrap4.min.css">


        <link rel="stylesheet" href="./dist/css/adminlte.min.css">

        <link rel="stylesheet" href="./plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

        <link rel="stylesheet" href="./plugins/daterangepicker/daterane-gepicker.css">

        <link rel="stylesheet" href="./plugins/summernote/summernotebs.min.css">
    </head>
    <body class="sidebar-mini layout-fixed sidebar-closed sidebar-collapse" style="height: auto;">
        <div class="wrapper">
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <%@include file="Header.jsp" %>
            <%@include  file="sidebar.jsp"%>
            <div class="content-wrapper" style="min-height: 1518.06px;">

<section class="content-header">
<div class="container-fluid">
<div class="row mb-2">
<div class="col-sm-6">
<h1>Article</h1>
</div>
<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
<li class="breadcrumb-item"><a href="#">Home</a></li>
<li class="breadcrumb-item active">Article</li>
</ol>
</div>
</div>
</div>
</section>

<section class="content">
<div class="container-fluid">
<div class="row">
<div class="col-12">
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Article</h3>
</div>
 
<div class="card-body">
<!--<div class="row">
<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper">
<div class="ribbon bg-primary">
Ribbon
</div>
</div>
Ribbon Default <br>
<small>.ribbon-wrapper.ribbon-lg .ribbon</small>
</div>
</div>
<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper ribbon-lg">
<div class="ribbon bg-info">
Ribbon Large
</div>
</div>
Ribbon Large <br>
<small>.ribbon-wrapper.ribbon-lg .ribbon</small>
</div>
</div>
<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper ribbon-xl">
<div class="ribbon bg-secondary">
Ribbon Extra Large
</div>
</div>
Ribbon Extra Large <br>
<small>.ribbon-wrapper.ribbon-xl .ribbon</small>
</div>
</div>
</div>-->
<!--<div class="row mt-4">
<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper ribbon-lg">
<div class="ribbon bg-success text-lg">
Ribbon
</div>
</div>
Ribbon Large <br> with Large Text <br>
<small>.ribbon-wrapper.ribbon-lg .ribbon.text-lg</small>
</div>
</div>-->
<!--<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper ribbon-xl">
<div class="ribbon bg-warning text-lg">
Ribbon
</div>
</div>
Ribbon Extra Large <br> with Large Text <br>
<small>.ribbon-wrapper.ribbon-xl .ribbon.text-lg</small>
</div>
</div>
<div class="col-sm-4">
<div class="position-relative p-3 bg-gray" style="height: 180px">
<div class="ribbon-wrapper ribbon-xl">
<div class="ribbon bg-danger text-xl">
Ribbon
</div>
</div>
Ribbon Extra Large <br> with Extra Large Text <br>
<small>.ribbon-wrapper.ribbon-xl .ribbon.text-xl</small>
</div>-->
<!--</div>-->
<!--</div>-->
<div class="row mt-4">
    <%while(R.next()){%>
<div class="col-sm-4">
<div class="position-relative">
    <a href="#"><img src="./dist/<%=R.getString(1)%>" alt="Photo 1" class="img-fluid"></a>
<!--<div class="ribbon-wrapper ribbon-lg">-->
<div class="ribbon bg-success text-lg" style="text-align: center;">
<%=R.getString(2)%>
<!--</div>-->
</div>
</div>
</div>
<%}%>
<!--<div class="col-sm-4">
<div class="position-relative">
<img src="../../dist/img/photo2.png" alt="Photo 2" class="img-fluid">
<div class="ribbon-wrapper ribbon-xl">
 <div class="ribbon bg-warning text-lg">
Ribbon
</div>
</div>
</div>
</div>
<div class="col-sm-4">
<div class="position-relative" style="min-height: 180px;">
<img src="../../dist/img/photo3.jpg" alt="Photo 3" class="img-fluid">
<div class="ribbon-wrapper ribbon-xl">
<div class="ribbon bg-danger text-xl">
Ribbon
</div>
</div>
</div>
</div>-->
</div>
</div>

</div>

</div>

</div>

</div>

</section>

</div>
            
    <%@include file="footer.jsp" %>
    
<div id="sidebar-overlay"></div></div>
<script src="./plugins/jquery/jqueery.min.js"></script>

        <script src="./plugins/jquery-ui/jqueery-ui.min.js"></script>
        <script>
          $.widget.bridge('uibutton', $.ui.button)
        </script>
        <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./plugins/chart.js/Charte.min.js"></script>
        <script src="./plugins/sparklines/sparkline.js"></script>
        <script src="./plugins/jqvmap/jquery.vmapes.min.js"></script>
        <script src="./plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <script src="./plugins/jquery-knob/jquery.knob.min.js"></script>
        <script src="./plugins/moment/moment.min.js"></script>
        <script src="./plugins/daterangepicker/daterangepick.js"></script>
        <script src="./plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="./plugins/summernote/summernote-bs4.min.js"></script>
        <script src="./plugins/overlayScrollbars/js/jquery.overlay.Scrollbar.min.js"></script>

        <script src="./dist/js/adminlte.js"></script>
<!--        <script src="./dist/js/demo.js"></script>-->

        <!--<script src="./dist/js/pages/dashboard.js"></script>-->
        <script src="./plugins/jquery/jqueery.min.js"></script>
    </body>
</html>
