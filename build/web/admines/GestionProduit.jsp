<%-- 
    Document   : GestionProduit
    Created on : 28 mars 2022, 15:05:34
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
    R = con.createStatement().executeQuery("select idcategorie, Dusiniation from categorie");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" rel="stylesheet">
        <link href="./admines/plugins/icheck-bootstrap/ichecke-bootstrap.min.css" rel="stylesheet">

        <link href="./admines/plugins/bootstrap-colorpicker/css/cssadmine.css" rel="stylesheet">
        <link href="./admines/plugins/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./admines/plugins/jqvmap/jqvmap.min.css">
        <link rel="stylesheet" href="./admines/plugins/jsgrid/jsgrids.min.css">
        <link rel="stylesheet" href="./admines/plugins/jsgrid/jsgrid-themes.min.css">
        
        <link rel="stylesheet" href="./admines/plugins/tempusdominus-bootstrap-4/css/tempusdominusbootstrap4.min.css">


        <link rel="stylesheet" href="./admines/dist/css/adminlte.min.css">

        <link rel="stylesheet" href="./admines/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

        <link rel="stylesheet" href="./admines/plugins/daterangepicker/daterane-gepicker.css">

        <link rel="stylesheet" href="./admines/plugins/summernote/summernotebs.min.css">

        <link rel="stylesheet" href="./admines/plugins/datatables-bs4/css/dataTabless.bootstrap4.min.css">
        <link rel="stylesheet" href="./admines/plugins/datatables-responsive/css/responsivee.bootstrap4.min.css">
        <link rel="stylesheet" href="./admines/plugins/datatables-buttons/css/buttonss.bootstrap4.min.css">
        <title>JSP Page</title>
    </head>
    <body class="sidebar-mini layout-fixed sidebar-closed sidebar-collapse" style="height: auto;">
        <div class="wrapper">
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <%@include file="Header.jsp" %>
            <%@include  file="sidebar.jsp"%>
            <!-- comment -->
            <div class="content-wrapper" style="min-height: 372px;">
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Gestion Produit</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Gestion Produit</li>
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
                                        <h3 class="card-title">Ajouter <small>Produit</small></h3>
                                    </div>
                                    <form action="<%=request.getContextPath()%>/ServletProduit" method="post" id="quickForm" novalidate="novalidate">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Disiniation</label>
                                                <input type="text" name="Disiniation" class="form-control" id="exampleInputPassword1" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Marque</label>
                                                <input type="text" name="Marque" class="form-control" id="exampleInputPassword1" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Prix</label>
                                                <input type="number" name="Prix" class="form-control" id="exampleInputPassword1" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Discription</label>
                                                <textarea id="inputDescription" class="form-control" name="Discription" rows="5"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Disponibilite</label>
                                                <input type="number" name="Disponibilite" class="form-control" id="exampleInputPassword1" placeholder="">
                                            </div>
<!--                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Date</label>
                                                <input type="date" name="password" class="form-control" id="exampleInputPassword1" placeholder="">
                                            </div>-->
                                            <div class="form-group">
                                                <label for="exampleInputFile">Image</label>
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
                                                <label for="exampleInputFile">Image Vedet</label>
                                                <div class="input-group">
                                                    <div class="custom-file">
                                                        <input type="file" name="ImageVedet" class="custom-file-input" id="exampleInputFile" multiple>
                                                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                    </div>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">Upload</span>
                                                    </div>
                                                </div>  
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Catégorie</label>
                                                    <select class="form-control" name="idcategorie">
                                                        <option selected="" disabled="">Select one</option>
                                                        <%while(R.next()){%>
                                                        <option value="<%=R.getString(1)%>"><%=R.getString(2)%></option>
                                                        <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Ajouter</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-6"></div>
                                            
                        </div>
                            
                    </div>
                </section>
                    
            </div>
            <%@include file="footer.jsp" %>
            <div id="sidebar-overlay"></div></div>
    
            <script src="./admines/plugins/jquery/jqueery.min.js"></script>

<script src="./admines/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="./admines/plugins/uplot/uPlott.iife.min.js"></script>
<script src="./admines/plugins/datatables/jquery.dataTabless.min.js"></script>
<script src="./admines/plugins/datatables-bs4/js/dataTabless.bootstrap4.min.js"></script>
<script src="./admines/plugins/datatables-responsive/js/dataTabless.responsive.min.js"></script>
<script src="./admines/plugins/datatables-responsive/js/responsivee.bootstrap4.min.js"></script>
<script src="./admines/plugins/datatables-buttons/js/dataTabless.buttons.min.js"></script>
<script src="./admines/plugins/datatables-buttons/js/buttonss.bootstrap4.min.js"></script>
<script src="./admines/plugins/jszip/jszipp.min.js"></script>
<script src="./admines/plugins/pdfmake/pdfmakee.min.js"></script>
<script src="./admines/plugins/pdfmake/vfs_fontss.js"></script>
<script src="./admines/plugins/datatables-buttons/js/buttonss.html5.min.js"></script>
<script src="./admines/plugins/datatables-buttons/js/buttonss.print.min.js"></script>
<script src="./admines/plugins/datatables-buttons/js/buttonss.colVis.min.js"></script>


<script src="./admines/dist/js/adminlte.js"></script>

<script src="./admines/dist/js/demo.js"></script>
<!--<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>-->

<script src="./admines/plugins/jquery/jqueery.min.js"></script>
    </body>
</html>
