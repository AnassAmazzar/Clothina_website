<%-- 
    Document   : Shop
    Created on : 5 avr. 2022, 11:16:35
    Author     : anass
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connpackage.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="packageadmin.*"%>
<!DOCTYPE html>
<%
    Connection con = ConnClothina.getConn();
    ResultSet R,T,U,Z;
    R = con.createStatement().executeQuery("select * from PRODUIT");
%>
<html>
    <head>
        <title>Shop</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="img/IconeClothina_1.png">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
	
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrapp.css" rel="stylesheet">

        <!-- Bootstrap core CSS -->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/animatee.css" rel="stylesheet">
        <link href="css/owll-carousel.css" rel="stylesheet">
        <link href="css/lightboxx.css" rel="stylesheet">
        <link href="css/jqueryy-ui.css" rel="stylesheet">
    </head>
    <body id="category" class="category">
        <%@include file="Header.jsp" %>
<nav aria-label="breadcrumb" class="w-100 float-left">
  <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallaxx.jpg" style="background-image: url(&quot;img/banner/parallaxx.jpg&quot;); background-position: 50% 0.809717%;">
    <li class="breadcrumb-item"><a href="#">Accueil</a></li>
    <li class="breadcrumb-item active" aria-current="page">Shop</li>
  </ol>
</nav>
	<div class="main-content w-100 float-left"> 
		<div class="container">
			<div class="row">
				<div class="content-wrapper filter-toggle col-xl-12 col-lg-12 order-lg-2">
				<div class="block-category mb-30 w-100 float-left">
					<div class="category-cover">
						<img src="img/banner/categoryy-banner.png" alt="category-banner"/>
					</div>
					<div class="title-category text-capitalize">Femme</div>
					<div class="category-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis, magna et euismod auctor, mauris ipsum interdum risus, a varius augue lacus id diam. Mauris maximus, ipsum at gravida sodales, purus tellus tempor eros, a feugiat elit odio in nunc.</div>
				</div>
				<header class="product-grid-header d-flex d-xs-block d-sm-flex d-lg-flex w-100 float-left">
				<div class="hidden-sm-down total-products d-flex d-xs-block d-lg-flex col-md-3 col-sm-3 col-xs-10 align-items-center float-left">
				<div class="row">
					<div class="nav" role="tablist">
						<a class="grid active" href="#grid" data-toggle="tab" role="tab" aria-selected="true" aria-controls="grid"><i class="material-icons align-middle">grid_on</i></a>
						<a class="list" href="#list" data-toggle="tab" role="tab" aria-selected="false" aria-controls="list"><i class="material-icons align-middle">format_list_bulleted</i></a>
						<a class="sort" href="#sort-view" data-toggle="tab" role="tab" aria-selected="false" aria-controls="sort-view"><i class="material-icons align-middle">reorder</i></a>
					</div>
				</div> 
				</div>
				<div class="filter-wrapper d-flex d-sm-flex d-xs-block d-lg-flex col-md-2 col-sm-1 col-xs-2 float-left">
					<div class="filter-title float-xs-right">filter</div>
				</div>
				<div class="shop-results-wrapper d-flex d-sm-flex d-xs-block d-lg-flex justify-content-end col-md-7 col-sm-8 col-xs-12 float-left">
				<div class="shop-results d-flex align-items-center"><span>Show</span>
                                    <div class="shop-select">
                                        <select name="number" id="number">
                                            <option value="9">9</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="75">75</option>
                                            <option value="100">100</option>
                                        </select>
                                    </div>
								</div>
				<div class="shop-results d-flex align-items-center"><span>Sort By</span>
					<div class="shop-select">
						<select name="sort" id="sort">
							<option value="position">Default sorting</option>
							<option value="p-name">Sort Popularity</option>
							<option value="p-price">Sort Price</option>
						</select>
					</div>
				</div>
				</div>
					
				</header>
				<div class="filter-toggle-main w-100 float-left">
				<div class="sidebar-filter-toggle left-sidebar w-100 float-left">
					
					<div id="sidebar-main" class="sidebar-main">
					
					<div class="sidebar-block price col-sm-4 float-left">
					<h3 class="widget-title"><a data-toggle="collapse" href="#price" role="button" aria-expanded="true" aria-controls="price">Price</a></h3>
					<div id="price" class="collapse show">
					<div class="price-inner">
					  <label for="amount">Price range:</label>
					  <input type="text" id="amount" readonly style="border:0; font-weight:bold; background:none;">
					  <div id="slider-range"></div>
					</div>
					</div>
					
					</div>
					<div class="sidebar-block color col-sm-4 float-left">
					<h3 class="widget-title"><a data-toggle="collapse" href="#color" role="button" aria-expanded="true" aria-controls="color">Color</a></h3>
					<div id="color" class="sidebar-widget-option-wrapper collapse show">
					<div class="color-inner">
						<div class="sidebar-widget-option">
							<a href="#" style="background-color: #000000;"></a>
							Black <span>(4)</span>
						</div>
						<div class="sidebar-widget-option">
							<a href="#" style="background-color: #11426b;"></a>
							Blue <span>(3)</span>
						</div>
						<div class="sidebar-widget-option">
							<a href="#" style="background-color: #7d5a3c;"></a>
							Brown <span>(3)</span>
						</div>
						<div class="sidebar-widget-option">
							<a href="#" style="background-color: #ffffff;"></a>
							White <span>(3)</span>
						</div>
					</div>
                  	</div>
					</div>
					<div class="sidebar-block size col-sm-4 float-left">
					<h3 class="widget-title"><a data-toggle="collapse" href="#size" role="button" aria-expanded="true" aria-controls="size">Size</a></h3>
					<div id="size" class="sidebar-widget-option-wrapper collapse show">
					<div class="size-inner">
						<div class="sidebar-widget-option">
							<input type="checkbox" id="size-1">
							<label for="size-1">L <span>(4)</span></label>
						</div>
						<div class="sidebar-widget-option">
							<input type="checkbox" id="size-2">
							<label for="size-2">XS <span>(3)</span></label>
						</div>
						<div class="sidebar-widget-option">
							<input type="checkbox" id="size-3">
							<label for="size-3">S <span>(3)</span></label>
						</div>
						<div class="sidebar-widget-option">
							<input type="checkbox" id="size-4">
							<label for="size-4">Xl <span>(3)</span></label>
						</div>
					</div>
                  	</div>
					</div>
					</div>
					</div>
				</div>	
				<div class="tab-content text-center products w-100 float-left">
				<div class="tab-pane grid fade active" id="grid" role="tabpanel">
				<div class="row" style="display: none;">
                                <%while(R.next()){%>
				<div class="product-layouts col-lg-3 col-md-3 col-sm-6 col-xs-6">
                                <div class="product-thumb">
                                        <div class="image zoom">
                                                <a href="product-details.html">
                                                        <img src="img/products/<%=R.getString(9)%>" alt="03"/>
                                                        <img src="img/products/<%=R.getString(10)%>" alt="04" class="second_image img-responsive"/>											</a>										</div>
                                        <div class="thumb-description">
                                                <div class="caption">
                                                        <h4 class="product-title text-capitalize"><a href="product-details.html"><%=R.getString(3)%></a></h4>
                                                </div>
<!--											<div class="rating">
                                                        <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                   <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                   <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
                                                </div>-->
                                                <div class="price">
                                                        <div class="regular-price"><%=R.getString(5)%> MAD</div>
                                                        <!--<div class="old-price">$150.00</div>-->
                                                </div>
                                                <div class="button-wrapper">
                                                <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
                                                        <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
                                                </div>										</div>
                                        </div>
                                </div>
                        </div>
                                                                <%}%>
								
								
								
								
								
				</div>

				</div>
				<div class="tab-pane fade list text-left" id="list" role="tabpanel">
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/001.jpg" alt="01"/>
												<img src="img/products/002.jpg" alt="02" class="second_image img-responsive"/>											
											</a>
											<ul class="countdown countdown4 text-center">
											  <li><span class="days">00</span><p class="days_text">Days</p></li>
											  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
											  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
											  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
											</ul>
																						</div>
										<div class="thumb-description col-xs-12 col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aliquam quaerat voluptatem</a></h4>
											</div>
											<div class="rating mb-10">
											<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
											</div>
											
											<div class="description">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rhoncus arcu turpis, quis sagittis orci dictum non. Etiam id eleifend erat. Donec sit amet nisl id nisi laoreet viverra in ac nibh.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="color-option d-flex align-items-center float-left w-100">
                                        <ul class="color-categories">
                                            <li>
                                                <a class="tt-pink" href="#" title="Pink"></a>                                            </li>
                                            <li>
                                                <a class="tt-blue" href="#" title="Blue"></a>                                            </li>
                                            <li>
                                                <a class="tt-yellow" href="#" title="Yellow"></a>                                            </li>
                                        </ul>
                                    </div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" disabled="disabled"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/002.jpg" alt="02"/>
												<img src="img/products/003.jpg" alt="03" class="second_image img-responsive"/></a>	
												<ul class="countdown countdown5 text-center">
										  <li><span class="days">00</span><p class="days_text">Days</p></li>
										  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
										  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
										  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
										</ul>
																					</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aspetur autodit autfugit</a></h4>
											</div>
											<div class="rating mb-10">
											<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
											</div>
											<div class="description">
											Integer erat purus, semper pharetra leo tincidunt, commodo vestibulum nulla. Nam ultricies nisl sed maximus rhoncus. Aliquam et ipsum pulvinar, rutrum erat nec, aliquet nisl.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/003.jpg" alt="03"/>
												<img src="img/products/004.jpg" alt="04" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">magni dolores eosquies</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
										<div class="description">
											Suspendisse eu mi ullamcorper, volutpat leo at, consectetur arcu. Morbi eget tempor sem, sed auctor sem. Nullam sodales scelerisque nisi, eu pellentesque felis euismod malesuada.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/004.jpg" alt="04"/>
												<img src="img/products/005.jpg" alt="05" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">voluptas nulla pariatur</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description">
											Phasellus euismod nulla nulla, sit amet tristique tellus condimentum ut. Aenean posuere lacus eu ultrices lobortis. Duis eget est arcu. Praesent rhoncus efficitur augue nec porttitor.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/005.jpg" alt="05"/>
												<img src="img/products/006.jpg" alt="06" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aliquam quat voluptatem</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description">
											Sed nisi elit, gravida eu risus sit amet, hendrerit tristique sapien. Proin consequat augue lectus, eu tempor orci congue quis. Sed dapibus non enim sed tristique. Donec commodo velit at odio gravida.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/006.jpg" alt="06"/>
												<img src="img/products/007.jpg" alt="07" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">voluptas sit aspernatur</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
												<div class="description">
											Vestibulum semper tincidunt eros, ut pulvinar felis. Maecenas tincidunt mi et dui dignissim, in feugiat nisl scelerisque. Aenean et nisi turpis. Cras in nisi vitae magna feugiat placerat id sit amet mauris.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/007.jpg" alt="07"/>
												<img src="img/products/008.jpg" alt="08" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">similique suntin culpaqui</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description">
											Phasellus ut felis eu libero semper elementum. Maecenas sit amet scelerisque ante. Nam ultrices enim sed lacus gravida condimentum. Proin at malesuada nibh.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" disabled="disabled"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-5 col-md-4">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/008.jpg" alt="08"/>
												<img src="img/products/009.jpg" alt="09" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12  col-sm-7 col-md-8 position-static text-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">suscipit laboriosam nisi</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description">
											Duis tincidunt ante urna, sit amet vestibulum felis placerat in. Duis a tortor et odio consequat congue. Mauris euismod augue tempor, sagittis nisl sed, pretium purus.											</div>

											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											<div class="button-wrapper">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>

				</div>
				<div class="tab-pane fade sort text-left" id="sort-view" role="tabpanel">
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/001.jpg" alt="01"/>
												<img src="img/products/002.jpg" alt="02" class="second_image img-responsive"/>											
											</a>
											
																						</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aliquam quaerat voluptatem</a></h4>
											</div>
											
											<div class="rating mb-10">
											<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
											</div>
											<div class="description mb-10">
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rhoncus arcu turpis, quis sagittis orci dictum non. Etiam id eleifend erat. Donec sit amet nisl id nisi laoreet viverra in ac nibh.											</div>
											<div class="color-option d-flex align-items-center float-left w-100">
                                        <ul class="color-categories">
                                            <li>
                                                <a class="tt-pink" href="#" title="Pink"></a>                                            </li>
                                            <li>
                                                <a class="tt-blue" href="#" title="Blue"></a>                                            </li>
                                            <li>
                                                <a class="tt-yellow" href="#" title="Yellow"></a>                                            </li>
                                        </ul>
                                    </div>
										</div>
									<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
									    <div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" disabled="disabled"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/002.jpg" alt="02"/>
												<img src="img/products/003.jpg" alt="03" class="second_image img-responsive"/></a>	
												
																					</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aspetur autodit autfugit</a></h4>
											</div>
											<div class="rating mb-10">
											<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
											</div>
											<div class="description mb-10">
											Integer erat purus, semper pharetra leo tincidunt, commodo vestibulum nulla. Nam ultricies nisl sed maximus rhoncus. Aliquam et ipsum pulvinar, rutrum erat nec, aliquet nisl.											</div>
											</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
												</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/003.jpg" alt="03"/>
												<img src="img/products/004.jpg" alt="04" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">magni dolores eosquies</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
										<div class="description mb-10">
											Suspendisse eu mi ullamcorper, volutpat leo at, consectetur arcu. Morbi eget tempor sem, sed auctor sem. Nullam sodales scelerisque nisi, eu pellentesque felis euismod malesuada.											</div>
</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/004.jpg" alt="04"/>
												<img src="img/products/005.jpg" alt="05" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">voluptas nulla pariatur</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description mb-10">
											Phasellus euismod nulla nulla, sit amet tristique tellus condimentum ut. Aenean posuere lacus eu ultrices lobortis. Duis eget est arcu. Praesent rhoncus efficitur augue nec porttitor.											</div>
</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/005.jpg" alt="05"/>
												<img src="img/products/006.jpg" alt="06" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">aliquam quat voluptatem</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description mb-10">
											Sed nisi elit, gravida eu risus sit amet, hendrerit tristique sapien. Proin consequat augue lectus, eu tempor orci congue quis. Sed dapibus non enim sed tristique. Donec commodo velit at odio gravida.											</div>
</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/006.jpg" alt="06"/>
												<img src="img/products/007.jpg" alt="07" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
													<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">voluptas sit aspernatur</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
												<div class="description mb-10">
											Vestibulum semper tincidunt eros, ut pulvinar felis. Maecenas tincidunt mi et dui dignissim, in feugiat nisl scelerisque. Aenean et nisi turpis. Cras in nisi vitae magna feugiat placerat id sit amet mauris.											</div>
											</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/007.jpg" alt="07"/>
												<img src="img/products/008.jpg" alt="08" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
											<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">similique suntin culpaqui</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description mb-10">
											Phasellus ut felis eu libero semper elementum. Maecenas sit amet scelerisque ante. Nam ultrices enim sed lacus gravida condimentum. Proin at malesuada nibh.											</div>
</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" disabled="disabled"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-layouts">
									<div class="product-thumb row">
										<div class="image zoom col-xs-12 col-sm-3 col-md-2">
											<a href="product-details.html" class="d-block position-relative">
												<img src="img/products/008.jpg" alt="08"/>
												<img src="img/products/009.jpg" alt="09" class="second_image img-responsive"/>											</a>										</div>
										<div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
										<div class="sort-title col-md-5 col-sm-7 float-left">
											<div class="caption">
												<h4 class="product-title text-capitalize"><a href="product-details.html">suscipit laboriosam nisi</a></h4>
											</div>
											<div class="rating mb-10">
												<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											  <span class="fa fa-stack"><i class="material-icons off">star</i></span>											   </div>
											</div>
																						<div class="description mb-10">
											Duis tincidunt ante urna, sit amet vestibulum felis placerat in. Duis a tortor et odio consequat congue. Mauris euismod augue tempor, sagittis nisl sed, pretium purus.											</div>
											</div>
<div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
											<div class="price">
												<div class="regular-price">$100.00</div>
												<div class="old-price">$150.00</div>
											</div>
											</div>
											<div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
											</div>
											</div>
										</div>
									</div>
								</div>

				</div>
				</div>
				<div class="pagination-wrapper float-left w-100">
				<p>Showing 1 to 9 of 11 (2 Pages)</p>
				<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item previous-page disable">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item current-page active"><a class="page-link" href="#">1</a></li>
    <li class="page-item current-page"><a class="page-link" href="#">2</a></li>
    <li class="page-item current-page"><a class="page-link" href="#">3</a></li>
    <li class="page-item next-page">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
				</div>
				</div>
				
			</div>
		</div>
		</div>
	

    <!-- Footer -->
	<div class="block-newsletter"> 
				<div class="parallax" data-source-url="img/banner/parallaxx.jpg" style="background-image:url(img/banner/parallaxx.jpg); background-position:50% 65.8718%;">
				<div class="container">
					<div class="tt-newsletter col-sm-7">
							<h2 class="text-uppercase">Subscribe to our Newsletter</h2>
					</div>
					<div class="block-content col-sm-5">
					<form method="post" action="contact-us.html">
						<div class="input-group">
							<input type="email" name="email" value="" placeholder="Email address.." required="" class="form-control">
							<span class="input-group-btn">
			 <button class="btn btn-theme text-uppercase btn-primary" type="submit">Subscribe</button>
			 </span>
						</div>
					</form>
		</div>
				</div>
				</div>
			</div>
        <%@include file="Footer.jsp" %>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/Pagination.js"></script>
	<script src="js/jqueryy.min.js"></script>
	<script src="js/bootstrapp.min.js"></script>
	<script src="js/owll.carousel.min.js"></script>
	<script src="js/customm.js"></script>
	<script src="js/parallaxx.js"></script>
	<script src="js/jqueryy-ui.min.js"></script>
	<script src="js/ResizeSensorr.min.js"></script>
	<script src="js/theiaa-sticky-sidebar.min.js"></script>
		<script src="js/jqueryy.countdown.min.js"></script>
		<script src="js/masonryy.pkgd.min.js"></script>
		<script src="js/imagesloadedd.pkgd.min.js"></script>
		<script src="js/jqueryy.zoom.min.js"></script>
		<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5ac1aabb4b401e45400e4197/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
});
</script>
<!--End of Tawk.to Script-->
    </body>
</html>
