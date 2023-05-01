<%-- 
    Document   : accueil
    Created on : 4 avr. 2022, 13:39:32
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
    R = con.createStatement().executeQuery("select * from PRODUIT where IDCATEGORIE=10");
    U = con.createStatement().executeQuery("select * from PRODUIT where IDCATEGORIE=4040");
    T = con.createStatement().executeQuery("select * from PRODUIT where IDCATEGORIE=4040");
    Z = con.createStatement().executeQuery("select * from PRODUIT where IDCATEGORIE=3010");
%>
<html>
    <head>
        <title>Accueil</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="img/IconeClothina_1.png">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
	
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- Bootstrap core CSS css/lightbox.css-->
        <link href="vendor/bootstrap/css/bootstrapp.css" rel="stylesheet">
        
        <!-- CSS Anass-->
        <link href="css/_anass_css.css" rel="stylesheet">
        <!-- Bootstrap core CSS -->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/animatee.css" rel="stylesheet">
        <link href="css/owll-carousel.css" rel="stylesheet">
        <link href="css/lightboxx.css" rel="stylesheet">
    <!-- Custom styles for this template -->
<!--    <script>
            $(document).ready(function (){
                $("#connect").click(function(event){
                    $.ajax({
                        url:'Servletadmin',
                        dataType:'html',
                        type:'post',
                        data:'Email='+$('#Email').val() + '&passwords='+$('#passwords').val(),
                        success:function(resultat){if(resultat!=0){window.location.replace("my-account.jsp");}else{$("#div").html("Invalid Email or Password ");}},
                        error: function (resultat) { $("#div").html("Erreur de Chargement");}
                    });
                });
            });
        </script>-->
  </head>
<body class="layout4 layout2">
    <%@include file="Header.jsp"%>
    <main>

      <!-- Main jumbotron for a primary marketing message or call to action -->
	  <div class="slider-wrapper my-40 my-sm-25 float-left w-100">
		<div class="ttloading-bg"></div>
	  	<div class="slider slider-for owl-carousel">
			<div>
				<a href="#">
                                    <img src="img/slider/collection_homme.jpg" alt=""/>
				</a>
				<div class="slider-content-wrap center effect_top">
				  <div class="slider-title mb-20 text-capitalize float-left w-100">nos spéciaux</div>
				  <div class="slider-subtitle mb-50 text-capitalize float-left w-100">Collection Homme</div>
				  <div class="slider-button text-uppercase float-left w-100"><a href="collection-homme.jsp">Voir Plus</a></div>
				</div>
			</div>
			<div>
				<a href="#">
                                    <img src="img/slider/collection_femme2.jpg" alt=""/>
				</a>
				<div class="slider-content-wrap center effect_bottom">
				  <div class="slider-title mb-20 text-capitalize float-left w-100">nos spéciaux</div>
				  <div class="slider-subtitle mb-50 text-capitalize float-left w-100">Collection Femme</div>
				  <div class="slider-button text-uppercase float-left w-100"><a href="collection-femme.jsp">Voir Plus</a></div>
				</div>
			</div>
	  </div>
	  </div>
      
			<div class="main-content">
                            <div id="ttsmartblog" class="style2 my-40 my-sm-25 bottom-to-top hb-animate-element hb-in-viewport">
				<!--<div class="tt-title d-inline-block float-none w-100 text-center text-capitalize">Actualités</div>-->
				<div class="container">
				<div class="row">
				<div class="smartblog-content owl-carousel owl-loaded owl-drag">
					
					
					
					
					
				<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1616px, 0px, 0px); transition: all 0.25s ease 0s; width: 2020px;"><div class="owl-item" style="width: 404px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/C-Homme.jpg" alt="blog-01">							
							</a>
							<!--<span class="blogicons"><a title="Click to view Full Image" href="img/banner/blog-001.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a></span>-->
							</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Homme</span></h4>
							<!--<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>-->
							<div class="read-more text-capitalize">
                                                            <a title="Click to view Read More" class="readmore" href="collection-homme.jsp">voir plus</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item" style="width: 404px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/C-Femme.jpg" alt="blog-02">							</a>
								<!--<span class="blogicons"><a title="Click to view Full Image" href="img/banner/blog-002.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a></span>-->
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Femme</span></h4>
							<!--<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>-->
							<div class="read-more text-capitalize">
                                                            <a title="Click to view Read More" class="readmore" href="collection-femme.jsp">voir plus</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item" style="width: 404px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/C-Accessoire.jpg" alt="blog-03">							</a>
						<!--<span class="blogicons"><a title="Click to view Full Image" href="img/banner/blog-003.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a></span>-->

													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Accessoire</span></h4>
							<!--<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>-->
							<div class="read-more text-capitalize">
                                                            <a title="Click to view Read More" class="readmore" href="accessoire.jsp">voir plus
                                                                </a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item" style="width: 404px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/C-Homme.jpg" alt="blog-04">							</a>
								<!--<span class="blogicons"><a title="Click to view Full Image" href="img/banner/blog-004.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> </span>-->
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Homme</span></h4>
							<!--<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>-->
							<div class="read-more text-capitalize">
                                                            <a title="Click to view Read More" class="readmore" href="collection-homme.jsp">voir plus</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item active" style="width: 404px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/C-Femme.jpg" alt="blog-05">							</a>
								<!--<span class="blogicons"><a title="Click to view Full Image" href="img/banner/blog-005.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a></span>-->
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Femme</span></h4>
<!--							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>-->
							<div class="read-more text-capitalize">
                                                            <a title="Click to view Read More" class="readmore" href="collection-femme.jsp">voir plus</a>
							</div>
						</div>
						</div>
					</div>
					</div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><i class="material-icons"></i></button><button type="button" role="presentation" class="owl-next"><i class="material-icons"></i></button></div><div class="owl-dots disabled"></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><i class="material-icons"></i></button><button type="button" role="presentation" class="owl-next"><i class="material-icons"></i></button></div><div class="owl-dots disabled"></div></div>
				</div>
				</div>
			</div>
			<div id="category-products" class="category-products">
			<div class="container">
<!--                            <div id="ttcmsbanner" class="ttcmsbanner my-40 my-sm-25">
				<div class="ttbannerblock container text-center">
					<div class="row">
					  <div class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element hb-in-viewport">
						<div class="ttbanner-img m-0"><a href="#"><img src="img/banner/cms-05.jpg" alt="cms-05"></a></div>
					  </div>
                                            <div class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element hb-in-viewport">
						<div class="ttbanner-img m-0"><a href="#"><img src="img/banner/cms-05.jpg" alt="cms-05"></a></div>
					  </div>
                                            <div class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element hb-in-viewport">
						<div class="ttbanner-img m-0"><a href="#"><img src="img/banner/cms-05.jpg" alt="cms-05"></a></div>
					  </div>
					</div>
				</div>
			</div>-->
<!--				<div class="inner-category owl-carousel">
					<div class="ttproduct-cat-item">
						<div class="tt_cat_content">
							<div class="category-img left-block">
								<a href="#" class="ttcategoy-image">
									<img src="img/category/001.jpg" alt="collection-img"/>
								</a>
							</div>
							<div class="description right-block text-center">
								<div class="title text-capitalize mb-10">Homme</div>
								<div class="desc">Lorem Ipsum is simply dummy tex</div>
							</div>
						</div>
					</div>
					<div class="ttproduct-cat-item">
						<div class="tt_cat_content">
							<div class="category-img left-block">
								<a href="#" class="ttcategoy-image">
									<img src="img/category/002.jpg" alt="collection-img"/>
								</a>
							</div>
							<div class="description right-block text-center">
								<div class="title text-capitalize mb-10">Femme</div>
								<div class="desc">Lorem Ipsum is simply dummy text</div>
							</div>
						</div>
					</div>
					<div class="ttproduct-cat-item">
						<div class="tt_cat_content">
							<div class="category-img left-block">
								<a href="#" class="ttcategoy-image">
									<img src="img/category/003.jpg" alt="collection-img"/>
								</a>
							</div>
							<div class="description right-block text-center">
								<div class="title text-capitalize mb-10">Accéssoire</div>
								<div class="desc">Lorem Ipsum is simply dummy text</div>
							</div>
						</div>
					</div>
					<div class="ttproduct-cat-item">
						<div class="tt_cat_content">
							<div class="category-img left-block">
								<a href="#" class="ttcategoy-image">
									<img src="img/category/004.jpg" alt="collection-img"/>
								</a>
							</div>
							<div class="description right-block text-center">
								<div class="title text-capitalize mb-10">Homme</div>
								<div class="desc">Lorem Ipsum is simply dummy text</div>
							</div>
						</div>
					</div>
								<div class="ttproduct-cat-item">
						<div class="tt_cat_content">
							<div class="category-img left-block">
								<a href="#" class="ttcategoy-image">
									<img src="img/category/001.jpg" alt="collection-img"/>
								</a>
							</div>
							<div class="description right-block text-center">
								<div class="title text-capitalize mb-10">Femme</div>
								<div class="desc">Lorem Ipsum is simply dummy text</div>
							</div>
						</div>
					</div>
					
				</div>-->
			</div>
			</div>
          	
			<div id="main"> 
			<div id="hometab" class="home-tab my-40 my-sm-25 bottom-to-top hb-animate-element">
			<div class="container">
			<div class="row">
				<div class="tt-title d-inline-block float-none w-100 text-center">Nos produits</div>
				<div class="tabs">
					<ul class="nav nav-tabs justify-content-center">
						<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#ttfeatured-main" id="featured-tab"><div class="tab-title">Homme</div></a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ttnew-main" id="new-tab"><div class="tab-title">Accéssoire</div></a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ttbestseller-main" id="bestseller-tab"><div class="tab-title">Femme</div></a></li>
					</ul>
				</div>
				<div class="tab-content float-left w-100">
				  <div class="tab-pane active float-left w-100" id="ttfeatured-main" role="tabpanel" aria-labelledby="featured-tab">
					  <section id="ttfeatured" class="ttfeatured-products">
						<div class="ttfeatured-content products grid owl-carousel" id="owl1">
                                                    <%while(R.next()){%>
							<div class="product-layouts">
								<div class="product-thumb">
									<div class="image fade-hover">
										<a href="product-details.html">
											<img src="img/products/<%=R.getString(9)%>" alt="01"/>
											<img src="img/products/<%=R.getString(10)%>" alt="02" class="second_image img-responsive"/>										</a>
<!--										<ul class="countdown1 countdown">
										  <li><span class="days">00</span><p class="days_text">Days</p></li>
										  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
										  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
										  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
										</ul>-->
										<div class="button-wrapper">
<!--										<div class="button-group text-center">
											<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
											<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
											<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
											<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
										</div>-->
										</div>	
									</div>
									<div class="thumb-description">
										<div class="caption">
											<h4 class="product-title text-capitalize"><a href="product-details.html"><%=R.getString(3)%></a></h4>
										</div>
<!--										<div class="rating">
										<div class="product-ratings d-inline-block align-middle">
											<span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>										</div>
										</div>-->
										<div class="price">
											<div class="regular-price"><%=R.getString(5)%> MAD</div>
<!--											<div class="old-price">$150.00</div>-->
										</div>
									</div>
								</div>
							</div>
                                                        <%}%>
						</div>
					</section>
				  </div>
				  <div class="tab-pane float-left w-100" id="ttnew-main" role="tabpanel" aria-labelledby="new-tab">
				  <section id="ttnew" class="ttnew-products">
					<div class="ttnew-content products grid owl-carousel" id="owl2">
                                            <%while(U.next()){%>
						<div class="product-layouts">
							<div class="product-thumb">
								<div class="image fade-hover">
									<a href="product-details.html">
										<img src="img/products/<%=U.getString(9)%>" alt="01"/>	
										<img src="img/products/<%=U.getString(10)%>" alt="02" class="second_image img-responsive"/>									</a>	
<!--									<ul class="countdown1 countdown">
										  <li><span class="days">00</span><p class="days_text">Days</p></li>
										  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
										  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
										  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
								  </ul>		-->
										<div class="button-wrapper">										
<!--									<div class="button-group text-center">
											<button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
											<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
											<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
											<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
										</div>-->
									</div>						
								</div>
								<div class="thumb-description">
									<div class="caption">
										<h4 class="product-title text-capitalize"><a href="product-details.html"><%=U.getString(3)%></a></h4>
									</div>
<!--									<div class="rating">
										<div class="product-ratings d-inline-block align-middle">
											<span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>								      </div>
								  </div>-->
									<div class="price">
										<div class="regular-price"><%=U.getString(5)%> MAD</div>
										<div class="old-price">$150.00</div>
									</div>
								</div>
							</div>
						</div>
                                                <%}%>
					</div>
				</section>
				  </div>
				  <div class="tab-pane float-left w-100" id="ttbestseller-main" role="tabpanel" aria-labelledby="bestseller-tab">
				  <section id="ttbestseller" class="ttbestseller-products">
					<div class="ttbestseller-content products grid owl-carousel" id="owl3">
                                            <%while(Z.next()){%>
						<div class="product-layouts">
							<div class="product-thumb">
								<div class="image fade-hover">
									<a href="product-details.html">
										<img src="img/products/<%=Z.getString(9)%>" alt="01"/>	
										<img src="img/products/<%=Z.getString(10)%>" alt="02" class="second_image img-responsive"/>									</a>	
<!--									<ul class="countdown1 countdown">
										  <li><span class="days">00</span><p class="days_text">Days</p></li>
										  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
										  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
										  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
								  </ul>	-->
										<div class="button-wrapper">										
<!--								<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-toggle="modal" data-target="#product_view"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
										  </div>-->
									</div>	
								</div>
									<div class="thumb-description">
									<div class="caption">
										<h4 class="product-title text-capitalize"><a href="product-details.html"><%=Z.getString(3)%></a></h4>
									</div>
									
<!--									<div class="rating">
										<div class="product-ratings d-inline-block align-middle">
											<span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
										   <span class="fa fa-stack"><i class="material-icons off">star</i></span>								      </div>	
								      </div>-->
									<div class="price">
										<div class="regular-price"><%=Z.getString(5)%> MAD</div>
										<!--<div class="old-price">$150.00</div>-->
									</div>
								</div>
							</div>
						</div>
                                                <%}%>
					</div>
				</section>
				  </div>
				</div>
			</div>
			</div>
			</div>
			<div id="ttcmsparallax" class="ttcmsparallax my-40 my-sm-25 bottom-to-top hb-animate-element float-left w-100 hb-in-viewport">
  					<div class="parallax float-left w-100" data-source-url="img/banner/offer-parallex-2.jpg" style="background-image: url(&quot;img/banner/offer-parallex-2.jpg&quot;); background-position: 50% 72.8304%;">
					<div class="content-wrap float-right text-center">
         <div class="description text-capitalize mb-30">Grande vente</div>
         <div class="title text-capitalize mb-40">obtenez jusqu'à 30 % de réduction</div>
      <div class="button"><a class="btn-primary text-capitalize" href="Shop.jsp">Achetez maintenant</a></div>
    </div>
					</div>
</div>
			<div id="ttspecial" class="ttspecial my-40 bottom-to-top hb-animate-element">
			<div class="container">
					<div class="row">
							<div class="tt-title d-inline-block float-none w-100 text-center">Nouveautés</div>
                                                        
							<div class="ttspecial-content products grid owl-carousel">
                                                        <%while(T.next()){%>
							<div class="product-layouts">
								<div class="product-thumb">
									<div class="image fade-hover">
										<a href="#">
											<img src="img/products/<%=T.getString(9)%>" alt="01"/>
											<img src="img/products/<%=T.getString(10)%>" alt="02" class="second_image img-responsive"/>										</a>
<!--										<ul class="countdown countdown3">
										  <li><span class="days">00</span><p class="days_text">Days</p></li>
										  <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
										  <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
										  <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
										</ul>	-->
										<div class="button-wrapper">	
<!--										<div class="button-group text-center">
												<button type="button" class="btn btn-primary btn-cart" data-toggle="modal" data-target="#product_view"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>
												<a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
												<button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
												<button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
										  </div>									-->
									  </div>
									</div>
									<div class="thumb-description">
										<div class="caption">
											<h4 class="product-title text-capitalize"><a href="product-details.html"><%=T.getString(3)%></a></h4>
										</div>
<!--										<div class="rating">
											<div class="product-ratings d-inline-block align-middle">
												<span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
											   <span class="fa fa-stack"><i class="material-icons off">star</i></span></div>-->
                                                                                <div class="price">
                                                                                    <div class="regular-price"><%=T.getString(5)%> MAD</div>
											<!--<div class="old-price">$150.00</div>-->
										</div>
								      </div>
									</div>
								</div>
                                                                <%}%>
							</div>
                                                        		
							</div>
					</div>
			</div>
			</div>
			<div id="ttcmssubbanner" class="ttcmssubbanner my-40 my-sm-25 bottom-to-top hb-animate-element">
  <div class="ttbannerblock container">
    <div class="row">
      <div class="ttbanner1 ttbanner col-sm-6 col-xs-6">
          <div class="ttbanner-img"><a href="collection-femme.jsp"><img src="img/banner/boutique-F.jpg" alt="cms-03"></a></div>
        <div class="ttbanner-inner">
          <div class="ttbanner-desc text-center">
            <span class="title text-uppercase">BOUTIQUE FEMME</span> 
            <!--<span class="subtitle text-uppercase py-20">up to 70% off</span>--> 
            <span class="shop-now text-capitalize"><a href="collection-femme.jsp" class="btn-primary">voir plus</a></span>          </div>
        </div>
      </div>
      <div class="ttbanner2 ttbanner col-sm-6">
          <div class="ttbanner-img"><a href="collection-homme.jsp"><img src="img/banner/boutique-H.jpg" alt="cms-04"></a></div>
        <div class="ttbanner-inner">
          <div class="ttbanner-desc text-center">
            <span class="title text-uppercase">BOUTIQUE HOMME</span> 
            <!--<span class="subtitle text-uppercase py-20">up to 70% off</span>-->
            <span class="shop-now text-capitalize"><a href="collection-homme.jsp" class="btn-primary">voir plus</a></span>          </div>
        </div>
      </div>
    </div>
  </div>
</div>
			
			
<!--			<div id="ttsmartblog" class="style2 my-40 my-sm-25 bottom-to-top hb-animate-element hb-in-viewport">
				<div class="tt-title d-inline-block float-none w-100 text-center text-capitalize">Actualités</div>
				<div class="container">
				<div class="row">
				<div class="smartblog-content owl-carousel owl-loaded owl-drag">
					
					
					
					
					
				<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-820px, 0px, 0px); transition: all 0s ease 0s; width: 2050px;"><div class="owl-item" style="width: 410px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/blog-001.jpg" alt="blog-01">							
							</a>
							<span class="blogicons">
                                        <a title="Click to view Full Image" href="img/banner/blog-001.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> 
							</span>
							</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Share the Love</span></h4>
							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
							<div class="read-more text-capitalize">
								<a title="Click to view Read More" class="readmore">Lire la suite</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item" style="width: 410px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/blog-002.jpg" alt="blog-02">							</a>
								<span class="blogicons">
                                        <a title="Click to view Full Image" href="img/banner/blog-002.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> 
							</span>
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Upon of seasons earth</span></h4>
							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
							<div class="read-more text-capitalize">
								<a title="Click to view Read More" class="readmore">Lire la suite</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item active" style="width: 410px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/blog-003.jpg" alt="blog-03">							</a>
																<span class="blogicons">
                                        <a title="Click to view Full Image" href="img/banner/blog-003.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> 
							</span>

													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>From Now we are certified web</span></h4>
							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
							<div class="read-more text-capitalize">
								<a title="Click to view Read More" class="readmore">Lire la suite
                                                                </a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item active" style="width: 410px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/blog-004.jpg" alt="blog-04">							</a>
								<span class="blogicons">
                                        <a title="Click to view Full Image" href="img/banner/blog-004.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> 
							</span>
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Viderer voluptatum te eum</span></h4>
							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
							<div class="read-more text-capitalize">
								<a title="Click to view Read More" class="readmore">Lire la suite</a>
							</div>
						</div>
						</div>
					</div>
					</div></div><div class="owl-item active" style="width: 410px;"><div class="ttblog">
					<div class="item">
						<div class="ttblog_image_holder">
							<a href="#">
								<img src="img/banner/blog-005.jpg" alt="blog-05">							</a>
								<span class="blogicons">
                                        <a title="Click to view Full Image" href="img/banner/blog-005.jpg" data-lightbox="example-set" class="icon zoom"><i class="material-icons">search</i></a> 
							</span>
													</div>
						<div class="blog-content-wrap float-left w-100">
						<div class="blog_inner">
							<h4 class="blog-title"><span>Share the Love</span></h4>
							<div class="blog-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
							<div class="read-more text-capitalize">
								<a title="Click to view Read More" class="readmore">Lire la suite</a>
							</div>
						</div>
						</div>
					</div>
					</div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><i class="material-icons"></i></button><button type="button" role="presentation" class="owl-next"><i class="material-icons"></i></button></div><div class="owl-dots disabled"></div></div>
				</div>
				</div>
			</div>-->
			<div id="ttbrandlogo" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
				<div class="container">
				<div class="tt-brand owl-carousel">
					<div class="item">
                                            <a href="https://www.bershka.com/fr/h-man.html"><img src="img/logos/Bersheka.png" alt="brand-logo-01"></a>
					</div>
					<div class="item">
                                            <a href="https://www.lacoste.com/fr/"><img src="img/logos/Lacoste.png" alt="brand-logo-02"></a>
					</div>
					<div class="item">
                                            <a href="https://www.zara.com/"><img src="img/logos/Zara.png" alt="brand-logo-03"></a>
					</div>
					<div class="item">
                                            <a href="https://www2.hm.com/fr_fr/index.html"><img src="img/logos/H&M.png" alt="brand-logo-04"></a>
					</div>
					<div class="item">
						<a href="https://www.newyorker.de/fr/"><img src="img/logos/New-yorker.png" alt="brand-logo-05"></a>
					</div>
					<div class="item">
						<a href="https://www.decathlon.ma/"><img src="img/logos/Decathelon.png" alt="brand-logo-06"></a>
					</div>
					<div class="item">
						<a href="https://shop.mango.com/fr"><img src="img/logos/Mango.png" alt="brand-logo-07"></a>
					</div>
				</div>
				</div>
			</div>
			
			</div> 
    </main>

    <!-- Footer -->
	<div class="block-newsletter"> 
            <div class="parallax" style="background-color: #090909;">
				<div class="container">
					<div class="tt-newsletter col-sm-7">
							<h2 class="text-uppercase">Abonnez-vous à notre newsletter</h2>
					</div>
					<div class="block-content col-sm-5">
					<form method="post" action="contact-us.html">
						<div class="input-group">
							<input type="email" name="email" value="" placeholder="Email address.." required="" class="form-control">
							<span class="input-group-btn">
			 <button class="btn btn-theme text-uppercase btn-secondary" type="submit">Subscribe</button>
			 </span>
						</div>
					</form>
		</div>
				</div>
				</div>
			</div>
        <%@include file="Footer.jsp" %>
  <!-- Footer -->
<div class="alert text-center cookiealert" role="alert">
    <b>Do you like cookies?</b> We use cookies to ensure you get the best experience on our website. <a href="https://cookiesandyou.com/">Learn more</a>

    <button type="button" class="btn btn-primary btn-sm acceptcookies" aria-label="Close">
        I agree
    </button>
</div>
  
  <!-- Register modal -->
<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header text-center">
	<h4 class="modal-title w-100 font-weight-medium text-left">S'inscrire</h4>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	  <span aria-hidden="true">&times;</span>
	</button>
  </div>
  <div class="modal-body mx-3">
	<div class="md-form mb-4">
	  <input type="text" id="Register-nom" class="form-control validate" placeholder="Votre nom">
	</div>
        <div class="md-form mb-4">
	  <input type="text" id="Register-prenom" class="form-control validate" placeholder="Votre prenom">
	</div>
	<div class="md-form mb-4">
	  <input type="email" id="Register-email" class="form-control validate" placeholder="Votre e-mail">
	</div>
	<div class="md-form mb-4">
	  <input type="password" id="Register-password" class="form-control validate" placeholder="Votre mot de passe">
	</div>
        <div class="md-form mb-4">
            <input type="tel" id="Register-tel" class="form-control validate" placeholder="Votre Téléphone">
	</div>
        <div class="md-form mb-4">
            <select class="form-control validate" id="Register-gender">
                <option disabled="" selected="">Votre Sexe</option>
                <option>Homme</option>
                <option>Femme</option>
            </select>
	  <!--<input type="text" id="RegisterForm-name" class="form-control validate" placeholder="Your name">-->
	</div>
	<div class="checkbox-link d-flex justify-content-between">
            <div class="left-col" style="visibility: hidden;">
		<input id="remember-me" type="checkbox"><label for="remember_me">Remember Me</label>
	</div>
	<!--<div class="right-col"><a href="#">S'identifier</a></div>-->
</div>
  </div>
  
  <div class="modal-footer d-flex justify-content-center">
      <button class="btn btn-primary" type="submit" id="inscription">Inscrire</button>
  </div>
</div>
</div>
</div>

<!-- Login modal -->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header text-center">
	<h4 class="modal-title w-100 font-weight-medium text-left">S'identifier</h4>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	  <span aria-hidden="true">&times;</span>
	</button>
  </div>
  <div class="modal-body mx-3">
	<div class="md-form mb-4">
            <input type="email" id="Email" class="form-control validate" placeholder="Votre e-mail">
	</div>
	<div class="md-form mb-4">
	  <input type="password" id="passwords" class="form-control validate" placeholder="Votre mot de passe">
	</div>
	<div class="checkbox-link d-flex justify-content-between">
	<div class="left-col">
            <input type="checkbox" id="remember_me" style="display: none;"><label for="remember_me"></label>
	</div>
            <!--<div class="right-col"><button onclick="myFunction()" style="border: none;"><a href="#" class="modal-view button" data-toggle="modal" data-target="#modalRegisterForm">Inscrivez-vous</a></button></div>-->
</div>
  </div>
  <div class="d-flex justify-content-center" id="div-message" style="color: #f00"></div>
  <div class="modal-footer d-flex justify-content-center">
      <button class="btn btn-primary" id="conect" type="submit">connexion</button>
  </div>
</div>
</div>
</div>

<!-- product_view modal -->
<div class="modal fade product_view" id="product_view" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog">

	<div class="modal-content">
		<div class="modal-header">
			 <h4 class="modal-title w-100w-100w-100 font-weight-bold d-none">Quick view</h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	  <span aria-hidden="true">×</span>
	</button>
		</div>
		<div class="modal-body">
			<div class="row">
                            
				<div class="col-md-6 left-columm">
                                <div class="product-large-image tab-content">
                                                
						<div class="tab-pane active" id="product-1" role="tabpanel" aria-labelledby="product-tab-1">
                                                    <div class="single-img img-full">
                                                        <a href="img/products/00006.jpg"><img src="img/products/00006.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
                                                        
						<div class="tab-pane" id="product-2" role="tabpanel" aria-labelledby="product-tab-2">
							<div class="single-img">
								<a href="img/products/002.jpg"><img src="img/products/002.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
						<div class="tab-pane" id="product-3" role="tabpanel" aria-labelledby="product-tab-3">
							<div class="single-img">
								<a href="img/products/003.jpg"><img src="img/products/003.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
						<div class="tab-pane" id="product-4" role="tabpanel" aria-labelledby="product-tab-4">
							<div class="single-img">
								<a href="img/products/004.jpg"><img src="img/products/004.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
						<div class="tab-pane" id="product-5" role="tabpanel" aria-labelledby="product-tab-5">
							<div class="single-img">
								<a href="img/products/005.jpg"><img src="img/products/005.jpg" class="img-fluid" alt=""></a>
							</div>
						</div>
				</div>
                                
				<div class="small-image-list float-left w-100"> 
                                <div class="nav-add small-image-slider-single-product-tabstyle-3 owl-carousel" role="tablist">
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="product-tab-1" href="#product-1" class="img active"><img src="img/products/001.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="product-tab-2" href="#product-2" class="img"><img src="img/products/002.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="product-tab-3" href="#product-3" class="img"><img src="img/products/003.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="product-tab-4" href="#product-4" class="img"><img src="img/products/004.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="product-tab-5" href="#product-5" class="img"><img src="img/products/005.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                </div>
                            </div>
                                                
				</div>
                                                        
				<div class="col-md-6 product_content">
                                    
					<h4 class="product-title text-capitalize">HHHH</h4>
                                        
					<div class="rating">
					<div class="product-ratings d-inline-block align-middle">
																				<span class="fa fa-stack"><i class="material-icons">star</i></span>
									   <span class="fa fa-stack"><i class="material-icons">star</i></span>
									   <span class="fa fa-stack"><i class="material-icons">star</i></span>
									   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
									   <span class="fa fa-stack"><i class="material-icons off">star</i></span>			</div>							</div>
					<span class="description float-left w-100">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					<h3 class="price float-left w-100"><span class="regular-price align-middle">$75.00</span><span class="old-price align-middle">$60.00</span></h3>
					
					<div class="product-variants float-left w-100">
						<div class="col-md-4 col-sm-6 col-xs-12 size-options d-flex align-items-center">
											<h5>Size:</h5>

								<select class="form-control" name="select">
											<option value="" selected="">Size</option>
											<option value="black">Medium</option>
											<option value="white">Large</option>
											<option value="gold">Small</option>
											<option value="rose gold">Extra large</option>
								</select>
						</div>
<!--						<div class="color-option d-flex align-items-center">
                                        <h5>color :</h5>
                                        <ul class="color-categories">
                                            <li class="active">
                                                <a class="tt-pink" href="#" title="Pink"></a>                                            </li>
                                            <li>
                                                <a class="tt-blue" href="#" title="Blue"></a>                                            </li>
                                            <li>
                                                <a class="tt-yellow" href="#" title="Yellow"></a>                                            </li>
                                        </ul>
                                    </div>-->
					</div>
					<div class="btn-cart d-flex align-items-center float-left w-100">
						<h5>qty:</h5>
						<input value="1" type="number">
						<button type="button" class="btn btn-primary"><i class="material-icons">shopping_cart</i> Add To Cart</button>
					</div>
				</div>
                                
			</div>
                    
                    
                        
		</div>
	</div>
        
</div>
</div>


<!-- cart-pop modal -->
<div class="modal fade" id="cart-pop" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header alert-success">
			 <h4 class="modal-title w-100w-100w-100">Product successfully added to your shopping cart</h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	  <span aria-hidden="true">×</span>
	</button>
		</div>
		<div class="modal-body">
			<div class="row">
			<div class="col-md-6 divide-right">
			<div class="row">
				<div class="col-md-5 col-sm-4 col-xs-12 product-img float-left">
					<img src="img/products/001.jpg" class="img-responsive" alt="01">
				</div>
				<div class="col-md-7 col-sm-8 col-xs-12 product-desc float-left">
					<h4 class="product-title text-capitalize">aliquam quaerat voluptatem</h4>
					<div class="rating">
					<div class="product-ratings d-inline-block align-middle">
					<span class="fa fa-stack"><i class="material-icons">star</i></span>
				   <span class="fa fa-stack"><i class="material-icons">star</i></span>
				   <span class="fa fa-stack"><i class="material-icons">star</i></span>
				   <span class="fa fa-stack"><i class="material-icons off">star</i></span>
				   <span class="fa fa-stack"><i class="material-icons off">star</i></span></div></div>
					<h3 class="price float-left w-100"><span class="regular-price align-middle">$75.00</span><span class="old-price align-middle">$60.00</span></h3>
				</div>
			</div>
			</div>
				<div class="col-md-6 divide-left">
					<p class="cart-products-count">There are 2 items in your cart.</p>
					<p class="total-products float-left w-100">
						<strong>Total products:</strong> $150.00
					</p>
					<p class="shipping float-left w-100">
						<strong>Total shipping:</strong> free
					</p>
					<p class="total-price float-left w-100">
						<strong>Total:</strong> $150.00(tax incl.)
					</p>
					<div class="cart-content-btn float-left w-100">
					<form action="#">
                      <input class="btn pull-right mt_10 btn-primary" value="Continue shopping" type="submit">
                    </form>
					<form action="checkout_page.html">
                      <input class="btn pull-right mt_10 btn-secondary" value="Proceed to checkout" type="submit">
                    </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<div class="compare-wrapper float-left w-100">
	<div class="compare-inner d-flex align-items-center p-20">
		<span class="close"><i class='material-icons'>
  close
</i></span>
		<div class="col-xs-12 col-sm-2 col-md-3 float-left d-flex align-items-center flex-column compare-left">
		<h2>compare products</h2>
		<div class="compare-btn">show all</div>
		</div>
		<div class="col-xs-12 col-sm-10 col-md-9 d-flex float-left align-items-center compare-right">
			<div class="compare-close-btn"></div>
			<div class="compare-products d-flex col-sm-7 col-lg-5">
			<div class="row">
				<div class="single-item col-sm-4 col-xs-4">
					<div class="remove"></div>
					<div class="image"><img src="img/products/001.jpg" class="img-fluid" alt=""></div>
				</div>
				<div class="single-item col-sm-4 col-xs-4">
					<div class="remove"></div>
					<div class="image"><img src="img/products/002.jpg" class="img-fluid" alt=""></div>
				</div>
				<div class="single-item col-sm-4 col-xs-4">
					<div class="remove"></div>
					<div class="image"><img src="img/products/003.jpg" class="img-fluid" alt=""></div>
				</div>
			</div>
			</div>
			<div class="buttons col-sm-5 col-lg-2">
				<div class="clear-btn btn btn-primary float-left w-100 mb-15">clear</div>
				<a href="compare.html" class="compare-btn btn btn-primary float-left w-100">compare</a>
			</div>
		</div>
	</div>
</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
                <script src="js/Login.js"></script>
                <script src="../admines/jquery.js"></script>
		<script src="js/jqueryy.min.js"></script>
		<script src="js/bootstrapp.min.js"></script>
		<script src="js/owll.carousel.min.js"></script>
		<script src="js/customm.js"></script>
		<script src="js/parallaxx.js"></script>
		<script src="js/lightboxx-2.6.min.js"></script>
		<script src="js/ResizeSensorr.min.js"></script>
		<script src="js/theiaa-sticky-sidebar.min.js"></script>
		<script src="js/invieww.js"></script>
		<script src="js/cookiealertt.js"></script>
		<script src="js/jqueryy.countdown.min.js"></script>
		<script src="js/masonryy.pkgd.min.js"></script>
		<script src="js/imagesloadedd.pkgd.min.js"></script>
		<script src="js/jqueryy.zoom.min.js"></script>
		<script src="js/jqueryy.lazy.min.js"></script>

		</body>
</html>
