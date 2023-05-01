<%-- 
    Document   : ajouter-article
    Created on : 23 mai 2022, 11:43:24
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ajouter-article</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" rel="stylesheet">
        <link href="./admines/plugins/icheck-bootstrap/ichecke-bootstrap.min.css" rel="stylesheet">

        <link href="./admines/plugins/bootstrap-colorpicker/css/cssadmine.css" rel="stylesheet">
        <link href="./admines/plugins/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./admines/plugins/jqvmap/jqvmap.min.css">
        
        <link rel="stylesheet" href="./admines/plugins/tempusdominus-bootstrap-4/css/tempusdominusbootstrap4.min.css">


        <link rel="stylesheet" href="./admines/dist/css/adminlte.min.css">

        <link rel="stylesheet" href="./admines/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

        <link rel="stylesheet" href="./admines/plugins/daterangepicker/daterane-gepicker.css">

        <link rel="stylesheet" href="./admines/plugins/summernote/summernotebs.min.css">
        <script src="./admines/jquery.js"></script>
        <script>
            $(document).ready(function(){
                $("#AjoutArt").click(function(event){
                    $.ajax({
                        url:'AjouterArticle',
                        dataType: 'html',
                        type: 'post',
                        data: 'ImageArt='+$('#exampleInputFile').val() + '&TitreArt='+$('#exampleInputEmail1').val() + '&ContenuArt='+$('#inputDescription').val() + '&SourceArt='+$('#exampleInputPassword1').val(),
                        success:function(resultat){if(resultat!=0){$("#div").html("Ajouter avec Succés");}else{$("#div").html("Invalid Email or Password ");}},
                        error: function (resultat) { $("#div").html("Erreur de Chargement");}
                    });
                });
            });
        </script>
    </head>
    <body class="sidebar-mini layout-fixed sidebar-closed sidebar-collapse" style="height: auto;">
        <div class="wrapper">
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <%@include file="Header.jsp" %>
            <%@include  file="sidebar.jsp"%>
            <div class="content-wrapper" style="min-height: 1345.31px;">

<section class="content-header">
<div class="container-fluid">
<div class="row mb-2">
<div class="col-sm-6">
<h1>Validation</h1>
</div>
<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
<li class="breadcrumb-item"><a href="#">Home</a></li>
<li class="breadcrumb-item active">Validation</li>
</ol>
</div>
</div>
</div>
</section>

<section class="content">
<div class="container-fluid">
<div class="row">

<div class="col-md-12">

<div class="card card-primary">
<div class="card-header">
 <h3 class="card-title">Quick Example <small>jQuery Validation</small></h3>
</div>


<!--<form id="quickForm" novalidate="novalidate">-->
<div class="card-body">
    <div class="form-group">
<label for="exampleInputEmail1">Image Article</label>
<div class="input-group">
                                                    <div class="custom-file">
                                                        <input type="file" name="Image" class="custom-file-input" id="exampleInputFile">
                                                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                    </div>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">Upload</span>
                                                    </div>
                                                </div>
</div>
<div class="form-group">
<label for="exampleInputEmail1">Titre Article</label>
<input type="text" name="email" class="form-control" id="exampleInputEmail1" placeholder=" Entrer titre article">
</div>
<div class="form-group">
<label for="exampleInputPassword1">Contenu </label>
<textarea id="inputDescription" class="form-control" name="Discription" rows="5"></textarea>
</div>
    <div class="form-group">
<label for="exampleInputPassword1">Source Article </label>
<input type="text" name="src-Art" class="form-control" id="exampleInputPassword1" placeholder="Password">
</div>
<div class="form-group mb-0">
<!--<div class="custom-control custom-checkbox">-->
<!--<input type="checkbox" name="terms" class="custom-control-input" id="exampleCheck1">-->
<!--<label class="custom-control-label" for="exampleCheck1" id="div"></label>-->
<div id="div"></div>
<!--</div>-->
</div>
</div>

<div class="card-footer">
    <button type="submit" class="btn btn-primary" id="AjoutArt">Submit</button>
</div>
<!--</form>-->
</div>

</div>


<div class="col-md-6">
</div>

</div>

</div>
</section>

</div>
            
    <%@include file="footer.jsp" %>
    
<div id="sidebar-overlay"></div></div>
        <script src="./admines/plugins/jquery/jqueery.min.js"></script>

        <script src="./admines/plugins/jquery-ui/jqueery-ui.min.js"></script>
        <script>
          $.widget.bridge('uibutton', $.ui.button)
        </script>
        <script src="./admines/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./admines/plugins/chart.js/Charte.min.js"></script>
        <script src="./admines/plugins/sparklines/sparkline.js"></script>
        <script src="./admines/plugins/jqvmap/jquery.vmapes.min.js"></script>
        <script src="./admines/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <script src="./admines/plugins/jquery-knob/jquery.knob.min.js"></script>
        <script src="./admines/plugins/moment/moment.min.js"></script>
        <script src="./admines/plugins/daterangepicker/daterangepick.js"></script>
        <script src="./admines/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="./admines/plugins/summernote/summernote-bs4.min.js"></script>
        <script src="./admines/plugins/overlayScrollbars/js/jquery.overlay.Scrollbar.min.js"></script>

        <script src="./admines/dist/js/adminlte.js"></script>
        <script src="./admines/dist/js/demo.js"></script>

        <!--<script src="./admines/dist/js/pages/dashboard.js"></script>-->
        <script src="./admines/plugins/jquery/jqueery.min.js"></script>
    </body>
</html>
