<%-- 
    Document   : gestclient
    Created on : 26 févr. 2022, 17:35:02
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
    //Statement st=con.createStatement();
    ResultSet F,E;
    F=con.createStatement().executeQuery("select * from categorie");
%>
    <%    
    String recordToDelete = request.getParameter("deleteid");
//
//    //Use PreparedStatements here instead of Statment
    E = con.createStatement().executeQuery("delete from categorie where idcategorie ="+ recordToDelete );

//     response.sendRedirect("/Clothina/ServletCateg"); //redirect to JSP one, which will again reload.%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="./view/img/IconeClothina_1.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        
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
        
        <title>Gestion Catégorie</title>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed" style="height: auto;">
        <div class="wrapper">
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <%@include file="Header.jsp" %>
            <%@include  file="sidebar.jsp"%>
            <!-- comment -->
            <div class="content-wrapper" style="min-height: 183px;">

                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Gestion Catégorie</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Gestion Catégorie</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="content">
                    <div class="container-fluid">
<div class="card">
<div class="card-header">
<h3 class="card-title">Catégorie</h3>
<a href="<%=request.getContextPath()%>/AjoouterCatg">
    <button style="float: right;" type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-info">
Ajouter Categorie
    </button></a>
</div>

<div class="card-body">
<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12">
            <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
<thead>
<tr><th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">id</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Disiniation</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Date</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Suppression</th></tr>
</thead>
<tbody>
    
    <%while(F.next()){
        String pid = F.getString(1);
    %>
    <tr class="odd">
        <td class="dtr-control sorting_1" tabindex="0"><%=F.getString(1)%></td>
        <td><%=F.getString(2)%></td>
        <td><%=F.getString(3)%></td>
        <td><a href ="<%=request.getContextPath()%>/ServletCateg?deleteid=<%=pid%>"><button type="button" class="btn btn-block btn-outline-danger btn-lg" onclick="return confirm('Etes-vous sûr ?')">Delete</button></a></td>
    </tr>
    <%}%>
   </tbody>
<tfoot>
<tr><th rowspan="1" colspan="1">Id</th><th rowspan="1" colspan="1">Disiniation</th><th rowspan="1" colspan="1">Date</th><th rowspan="1" colspan="1">Suppression</th></tr>
</tfoot>
            </table></div></div></div>
</div>

</div>
                </div>
            </section>

</div>
    <%@include file="footer.jsp" %>
    <div id="sidebar-overlay"></div></div>
        
<script src="./admines/plugins/jquery/jqueery.min.js"></script>
<!--<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>-->
<script src="./admines/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
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
<script>
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
</script>
    </body>
</html>
