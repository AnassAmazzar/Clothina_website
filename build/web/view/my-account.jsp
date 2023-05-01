<%-- 
    Document   : my-account
    Created on : 19 mai 2022, 11:55:53
    Author     : anass
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="packageadmin.*" %>
<%@page import="Connpackage.*" %>
<!DOCTYPE html>
<%
    Connection con = ConnClothina.getConn();
    ResultSet R;
    R = con.createStatement().executeQuery("select Nom_Admine,Prenom_Admine,Email,Telephone,Sexe,PASSWORDS,ida from MyAdmine where Email='"+session.getAttribute("Nom")+"'");
%>
<html>
    <head>
        <title>Mon Compte</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="img/IconeClothina_1.png">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
	
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
	<!-- Bootstrap core CSS css/lightbox.css-->
        <link href="vendor/bootstrap/css/bootstrapp.css" rel="stylesheet">

        <!-- Bootstrap core CSS -->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/animatee.css" rel="stylesheet">
        <link href="css/owll-carousel.css" rel="stylesheet">
        <link href="css/lightboxx.css" rel="stylesheet">
        <link href="css/_anass_css.css" rel="stylesheet">
        
    </head>
    <body class="index layout4">
        <%@include file="Header.jsp"%>
        <nav aria-label="breadcrumb" class="w-100 float-left">
            <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallaxx.jpg" style="background-image: url(&quot;img/banner/parallaxx.jpg&quot;); background-position: 50% 5.72626%;">
                <li class="breadcrumb-item"><a href="#">Accueil</a></li>
                <li class="breadcrumb-item active" aria-current="page">mon compte</li>
            </ol>
        </nav>
        <!-- Afficher Les donner -->
        <div class="main-content w-100 float-left blog-list" style="transform: none; display: none;" id="moddif">
        <div class="container" style="transform: none;">
            <div class="row" style="transform: none; justify-content: center;">
                
                <div class="products-grid col-xl-9 col-lg-8 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12 order-lg-last account-content">
                            <h4>Modifier les informations du compte</h4>
                            <!--<form action="#" class="myacoount-form">-->
                                <%while(R.next()){%>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group required-field">
                                                    <label for="acc-name">Prénom <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-name" name="acc-name" required="" value="<%=R.getString(1)%>">
                                                </div>
                                                <!-- End .form-group -->
                                            </div>
                                            <!-- End .col-md-4 -->

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="acc-mname">Nom <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-mname" name="acc-mname" required="" value="<%=R.getString(2)%>">
                                                </div>
                                                 <!--End .form-group--> 
                                            </div>
                                            <!-- End .col-md-4 -->

                                            <div class="col-md-4">
                                                <div class="form-group required-field">
                                                    <label for="acc-lastname">Téléphone <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-lastname" name="acc-lastname" required="" value="<%=R.getString(4)%>">
                                                </div>
                                                <!-- End .form-group -->
                                            </div>
                                            <!-- End .col-md-4 -->
                                        </div>
                                        <!-- End .row -->
                                    </div>
                                    <!-- End .col-sm-11 -->
                                </div>
                                <!-- End .row -->

                                <div class="form-group required-field">
                                    <label for="acc-email">Email <span class="required">*</span></label>
                                    <input type="email" class="form-control" id="acc-email" name="acc-email" required="" value="<%=R.getString(3)%>">
                                </div>
                                <!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label for="account-password">Mot de passe <span class="required">*</span></label>
                                    <input type="password" class="form-control" id="account-password" name="account-password" required="" value="<%=R.getString(6)%>">
                                </div>
                                <!-- End .form-group -->
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="change-password-checkbox" value="1">
                                    <label class="custom-control-label" for="change-password-checkbox">Changer le mot de passe</label>
                                </div>
                                <!-- End .custom-checkbox -->

                                <div id="account-change-password" class="">
                                    <h4>Changer le mot de passe</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group required-field">
                                                <label for="account-pass2">Mot de passe</label>
                                                <input type="password" class="form-control" id="account-pass2" name="account-pass2">
                                            </div>
                                            <!-- End .form-group -->
                                        </div>
                                        <!-- End .col-md-6 -->

                                        <div class="col-md-6">
                                            <div class="form-group required-field">
                                                <label for="account-pass3">Confirmer Mot de passe</label>
                                                <input type="password" class="form-control" id="account-pass3" name="account-pass3">
                                            </div>
                                            <!-- End .form-group -->
                                        </div>
                                        <!-- End .col-md-6 -->
                                    </div>
                                    <!-- End .row -->
                                </div>
                                <!-- End #account-chage-pass -->

                                <div class="required text-right" id="div-message"></div>
                                <div class="form-footer d-flex justify-content-between align-items-center">
                                    <a href="#" id="butt-2"><i class="material-icons">navigate_before</i>Retour</a>

                                    <div class="form-footer-right">
                                        <button type="submit" class="btn btn-primary btn-primary" id="Modif">Enregistrer</button>
                                    </div>
                                </div>
                                <!-- End .form-footer -->
                            <!--</form>-->
                        </div>
                    </div>
                </div>
<!--				<div class="sidebar col-xl-3 col-lg-3 order-lg-1" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
					
				<div class="theiaStickySidebar" style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none;"><div class="sidebar-product left-sidebar w-100 float-left">
					<div class="title">
					<a data-toggle="collapse" href="#sidebar-product" aria-expanded="false" aria-controls="sidebar-product" class="d-lg-none block-toggler">sale products</a>
					</div>
					<div id="sidebar-product" class="collapse w-100 float-left">
					<div class="sidebar-block sale products">
					<h3 class="widget-title">sale products</h3>
							<div class="product-layouts">
			<div class="product-thumb">
				<div class="image col-sm-4 float-left">
					<a href="#">
						<img src="img/products/001.jpg" alt="01">										</a>									</div>
				<div class="thumb-description col-sm-8 text-left float-left">
					<div class="caption">
						<h4 class="product-title text-capitalize"><a href="product-details.html">aliquam quaerat voluptatem</a></h4>
					</div>
					<div class="price">
						<div class="regular-price">$100.00</div>
						<div class="old-price">$150.00</div>
					</div>
				</div>
			</div>
		</div>
							<div class="product-layouts">
								<div class="product-thumb">
									<div class="image col-sm-4 float-left">
										<a href="#">
											<img src="img/products/002.jpg" alt="01">										</a>									</div>
									<div class="thumb-description col-sm-8 text-left float-left">
										<div class="caption">
											<h4 class="product-title text-capitalize"><a href="product-details.html">aspetur autodit autfugit</a></h4>
										</div>
										<div class="price">
											<div class="regular-price">$100.00</div>
											<div class="old-price">$150.00</div>
										</div>
									</div>
								</div>
							</div>
							<div class="product-layouts">
								<div class="product-thumb">
									<div class="image col-sm-4 float-left">
										<a href="#">
											<img src="img/products/003.jpg" alt="03">										</a>									</div>
									<div class="thumb-description col-sm-8 text-left float-left">
										<div class="caption">
											<h4 class="product-title text-capitalize"><a href="product-details.html">magni dolores eosquies</a></h4>
										</div>
										<div class="price">
											<div class="regular-price">$100.00</div>
											<div class="old-price">$150.00</div>
										</div>
									</div>
								</div>
							</div>
					</div>
					</div>
					</div><div class="resize-sensor" style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 318px; height: 488px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div></div></div>-->
            </div>
        </div>
    </div>
        <!-- finn -->
        <div class="main-content w-100 float-left blog-list" style="transform:none;" id="moddif-2">
        <div class="container" style="transform: none;">
            <div class="row" style="transform: none; justify-content: center;">
                
                <div class="products-grid col-xl-9 col-lg-8 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12 order-lg-last account-content">
                            <h4>Les informations du compte</h4>
                            <table id="info-client">
                                <!--////-->
                                    <tr>
                                        <td><h5 style="margin-bottom: 10px; color: #090909;">Nom</h5></td>
                                        <td><h6>: &nbsp;<%=R.getString(1)%></h6></td>
                                    </tr>
                                    <tr>
                                        <td><h5 style="margin-bottom: 10px; color: #090909;">Prénom</h5></td>
                                        <td><h6>: &nbsp;<%=R.getString(2)%></h6></td>
                                    </tr>
                                    <tr>
                                        <td><h5 style="margin-bottom: 10px; color: #090909;">Email</h5></td>
                                        <td><h6>: &nbsp;<%=R.getString(3)%></h6></td>
                                    </tr>
                                    <tr>
                                        <td><h5 style="margin-bottom: 10px; color: #090909;">Téléphone</h5></td>
                                        <td><h6>: &nbsp;<%=R.getString(4)%></h6></td>
                                    </tr>
                                    <tr>
                                        <td><h5 style="margin-bottom: 10px; color: #090909;">Sexe</h5></td>
                                        <td><h6>: &nbsp;<%=R.getString(5)%></h6></td>
                                    </tr>
                                    <%}%>
                            </table>
                                <!--<h5><if(request.getSession().getAttribute("Nom")!=null){out.println(session.getAttribute("Nom"));}%></h5>-->
                                <div class="form-footer d-flex justify-content-between align-items-center">
                                    <div class="form-footer-right">
                                        <button class="btn btn-primary btn-primary" id="butt" onclick="maFonction()">Modifier</button>
                                    </div>
                                    <!--<a href="#"><i class="material-icons">navigate_before</i>Back</a>-->
                                </div>
<!--                            <form action="#" class="myacoount-form">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group required-field">
                                                    <label for="acc-name">First Name <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-name" name="acc-name" required="">
                                                </div>
                                                 End .form-group 
                                            </div>
                                             End .col-md-4 

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="acc-mname">Middle Name <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-mname" name="acc-mname">
                                                </div>
                                                 End .form-group 
                                            </div>
                                             End .col-md-4 

                                            <div class="col-md-4">
                                                <div class="form-group required-field">
                                                    <label for="acc-lastname">Last Name <span class="required">*</span></label>
                                                    <input type="text" class="form-control" id="acc-lastname" name="acc-lastname" required="">
                                                </div>
                                                 End .form-group 
                                            </div>
                                             End .col-md-4 
                                        </div>
                                         End .row 
                                    </div>
                                     End .col-sm-11 
                                </div>
                                 End .row 

                                <div class="form-group required-field">
                                    <label for="acc-email">Email</label>
                                    <input type="email" class="form-control" id="acc-email" name="acc-email" required="">
                                </div>
                                 End .form-group 

                                <div class="form-group required-field">
                                    <label for="account-password">Password</label>
                                    <input type="password" class="form-control" id="account-password" name="account-password" required="">
                                </div>
                                 End .form-group 
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="change-password-checkbox" value="1">
                                    <label class="custom-control-label" for="change-password-checkbox">Change Password</label>
                                </div>
                                 End .custom-checkbox 

                                <div id="account-change-password" class="">
                                    <h4>Change Password</h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group required-field">
                                                <label for="account-pass2">Password</label>
                                                <input type="password" class="form-control" id="account-pass2" name="account-pass2">
                                            </div>
                                             End .form-group 
                                        </div>
                                         End .col-md-6 

                                        <div class="col-md-6">
                                            <div class="form-group required-field">
                                                <label for="account-pass3">Confirm Password</label>
                                                <input type="password" class="form-control" id="account-pass3" name="account-pass3">
                                            </div>
                                             End .form-group 
                                        </div>
                                         End .col-md-6 
                                    </div>
                                     End .row 
                                </div>
                                 End #account-chage-pass 

                                <div class="required text-right">* Required Field</div>
                                <div class="form-footer d-flex justify-content-between align-items-center">
                                    <a href="#"><i class="material-icons">navigate_before</i>Back</a>

                                    <div class="form-footer-right">
                                        <button type="submit" class="btn btn-primary btn-primary">Save</button>
                                    </div>
                                </div>
                                 End .form-footer 
                            </form>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="block-newsletter"> 
				<div class="parallax" data-source-url="img/banner/parallaxx.jpg" style="background-image: url(&quot;img/banner/parallaxx.jpg&quot;); background-position: 50% 71.5125%;">
				<div class="container">
					<div class="tt-newsletter col-sm-7">
							<h2 class="text-uppercase">Abonnez-vous à notre newsletter</h2>
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
	  <input type="text" id="RegisterForm-name" class="form-control validate" placeholder="Your name">
	</div>
	<div class="md-form mb-4">
	  <input type="email" id="RegisterForm-email" class="form-control validate" placeholder="Your email">
	</div>
	<div class="md-form mb-4">
	  <input type="password" id="RegisterForm-pass" class="form-control validate" placeholder="Your password">
	</div>
	<div class="checkbox-link d-flex justify-content-between">
	<div class="left-col">
		<input id="remember-me" type="checkbox"><label for="remember_me">Remember Me</label>
	</div>
	<div class="right-col"><a href="#">Forget Password?</a></div>
</div>
  </div>
  
  <div class="modal-footer d-flex justify-content-center">
      <button class="btn btn-primary">Sign up</button>
  </div>
</div>
</div>
</div>

<!-- Login modal -->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-hidden="true">
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
            <input type="email" id="Email" class="form-control validate" placeholder="Votre e-mail">
	</div>
	<div class="md-form mb-4">
	  <input type="password" id="passwords" class="form-control validate" placeholder="Votre mot de passe">
	</div>
	<div class="checkbox-link d-flex justify-content-between">
	<div class="left-col">
		<input type="checkbox" id="remember_me"><label for="remember_me">Remember Me</label>
	</div>
	<div class="right-col"><a href="#">Forget Password?</a></div>
</div>
  </div>
    <div class="d-flex justify-content-center" id="div-message" style="color: #f00"></div>
  <div class="modal-footer d-flex justify-content-center">
	<button class="btn btn-primary" id="conect" type="submit">S'identifier</button>
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
		<!--<script src="js/jqueryy.min.js"></script>-->
                <script src="../admines/jquery.js"></script>
                <script src="js/Login.js"></script>
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
