<%-- 
    Document   : sidebar
    Created on : 16 févr. 2022, 09:08:53
    Author     : 
<%if(session.getAttribute("Nom")!=null){out.println(session.getAttribute("Nom"));}%>
--%>
<%@page import="Connpackage.ConnClothina" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%
    Connection conn = ConnClothina.getConn();
    ResultSet T;
    T = conn.createStatement().executeQuery("select Nom_Admine from MyAdmine where Email='"+session.getAttribute("Nom")+"'");
%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
                <a href="#" class="brand-link">
                        <img src="./image/AdmineLogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">Admine</span>
                </a>
                <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition"><div class="os-resize-observer-host observed"><div class="os-resize-observer" style="left: 0px; right: auto;"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"><div class="os-resize-observer"></div></div><div class="os-content-glue" style="margin: 0px -8px;"></div><div class="os-padding"><div class="os-viewport os-viewport-native-scrollbars-invisible os-viewport-native-scrollbars-overlaid" style="overflow-y: scroll;"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
                                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                                    <div class="image">
                                        <img src="./admines/dist/imge/user-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                                    </div>
                                    <%while(T.next()){%>
                                    <div class="info">

                                        <a href="#" class="d-block"><%=T.getString(1)%></a>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="form-inline">
                                    <div class="input-group" data-widget="sidebar-search">
                                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                                        <div class="input-group-append">
                                            <button class="btn btn-sidebar">
                                                <i class="fas fa-search fa-fw"></i>
                                            </button>
                                        </div>
                                    </div><div class="sidebar-search-results"><div class="list-group"><a href="#" class="list-group-item"><div class="search-title"><strong class="text-light"></strong>N<strong class="text-light"></strong>o<strong class="text-light"></strong> <strong class="text-light"></strong>e<strong class="text-light"></strong>l<strong class="text-light"></strong>e<strong class="text-light"></strong>m<strong class="text-light"></strong>e<strong class="text-light"></strong>n<strong class="text-light"></strong>t<strong class="text-light"></strong> <strong class="text-light"></strong>f<strong class="text-light"></strong>o<strong class="text-light"></strong>u<strong class="text-light"></strong>n<strong class="text-light"></strong>d<strong class="text-light"></strong>!<strong class="text-light"></strong></div><div class="search-path"></div></a></div></div>                                      
                                </div>

                                <nav class="mt-2">
                                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                                        <li class="nav-item menu-open">
                                            <a href="<%=request.getContextPath()%>/Servletdashboard" class="nav-link active">
                                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                                <p>
                                                    Dashboard
                                                </p>
                                            </a>
<!--                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="gestclient.jsp" class="nav-link active">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Dashboard v1</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="gestCategorie.jsp" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Dashboard v2</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="./index3.html" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Dashboard v3</p>
                                                    </a>
                                                </li>
                                            </ul>-->
                                        </li>
<!--                                        <li class="nav-item menu-open">
                                            <a href="gestclient.jsp" class="nav-link active">
                                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                                <p>
                                                    Gestion Client
                                                </p>
                                            </a>
                                        </li>
                                        <li class="nav-item menu-open">
                                            <a href="gestCategorie.jsp" class="nav-link active">
                                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                                <p>
                                                    Gestion Catégorie
                                                </p>
                                            </a>
                                        </li>-->
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/ServletClient" class="nav-link">
                                                <i class="nav-icon fas fa-th"></i>
                                                <p>
                                                    Gestion Client
<!--                                                    <span class="right badge badge-danger">New</span>-->
                                                </p>
                                            </a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/ServletCateg" class="nav-link">
                                                <i class="nav-icon fas fa-th"></i>
                                                <p>
                                                    Gestion Catégorie
                                                </p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/ServletProduit" class="nav-link">
                                                <i class="nav-icon fas fa-th"></i>
                                                <p>
                                                    Gestion Produit
                                                </p>
                                            </a>
                                        </li>
<!--                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="nav-icon far fa-calendar-alt"></i>
                                                <p>
                                                    Actualités
                                                    <i class="right fas fa-angle-left"></i>
                                                </p>
                                            </a>
                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="admines/afficher-article.jsp" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Tous les articles</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="admines/ajouter-article.jsp" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Ajouter article</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="pages/charts/inline.html" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Inline</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="pages/charts/uplot.html" class="nav-link">
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>uPlot</p>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>-->

</ul>
</nav>

</div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 30.0957%; transform: translate(0px, 104.859px);"></div></div></div><div class="os-scrollbar-corner"></div></div>

</aside>
