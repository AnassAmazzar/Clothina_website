<%-- 
    Document   : Contact
    Created on : 5 avr. 2022, 13:53:16
    Author     : anass
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<title>Contact</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="img/IconeClothina_1.png">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
	<!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrapp.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/animatee.css" rel="stylesheet">
    <link href="css/owll-carousel.css" rel="stylesheet">
	 <link href="css/lightboxx.css" rel="stylesheet">
    <!-- Custom styles for this template -->
  </head>
    <body class="index layout2 layout4">
        <%@include file="Header.jsp"%>
	<nav aria-label="breadcrumb" class="w-100 float-left">
  <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallaxx2.jpg" style="background-image: url(&quot;img/banner/parallaxx2.jpg&quot;); background-position: 50% 0.809717%;">
    <li class="breadcrumb-item"><a href="#">Accueil</a></li>
    <li class="breadcrumb-item active" aria-current="page">Contact</li>
  </ol>
</nav>
    	<div class="main-content w-100 float-left"> 
		<div class="container">
			<div class="row">
			<!--Google map-->
<div id="map-container-google-1" class="z-depth-1-half map-container col-sm-12 mb-50" style="height: 500px">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3323.7276602537895!2d-7.634493484847714!3d33.58641964958113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda7d294d7edd3d3%3A0x19152c67b925b27a!2sTwin%20Center%2C%20Casablanca%2020250!5e0!3m2!1sfr!2sma!4v1649167380446!5m2!1sfr!2sma" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>

</div>

<!--Google Maps-->
				<div class="contact-form-area col-sm-7">
				<div class="contact-form-inner">
					<h4 class="text-capitalize">Formulaire de contact</h4>
					<form id="contact-form" method="post">
                    <div class="row">
                        <div class="col-md-12">
							<label for="name" class="float-left">Nom<span class="required">*</span></label>
                            <input type="text" name="name" id="name" class="float-right" required>
                        </div>
                        <div class="col-md-12">
							<label for="last_name" class="float-left">Prénom<span class="required">*</span></label>
                            <input type="text" name="last_name" id="last_name" class="float-right" required>
                        </div>
                        <div class="col-md-12">
 							<label for="email" class="float-left">Email<span class="required">*</span></label>
                            <input type="text" name="email" id="email" class="float-right" required>
                        </div>
                        <div class="col-md-12">
 							<label for="subject" class="float-left">Sujet<span class="required">*</span></label>
                            <input type="text" name="subject" id="subject" class="float-right" required>
                        </div>
						<div class="col-md-12">
							<label for="message" class="float-left">Message</label>
							<textarea name="message" id="message" class="float-right"></textarea>
                        </div>
                    </div>
					<input type="submit" class="submit-btn default-btn btn-primary btn" value="Envoyer">
                    <p class="form-messege"></p>
                </form>
				</div>
				</div>
				<div class="contact-address col-sm-5">
				<div class="contact-inner float-left w-100">
                <div class="contact-information">
									<h4 class="text-capitalize">contact</h4>

                    <p>Pour toutes vos demandes d’informations, de précommande, ou de retour, n’hésitez pas à nous contacter !</p>
                    <div class="contact-wrapper">
                        <div class="contact-list">
                           <i class="material-icons">place</i>
                            <span>Addresse :  Bd Al Massira Al Khadra, Casablanca 20250</span>
                        </div>
                        <div class="contact-list">
                           <i class="material-icons">call</i>
                            <span>06 75 73 42 99</span>
                        </div>
                        <div class="contact-list">
                          <i class="material-icons">email</i>
                            <span>anassamazzar1959@gmail.com</span>
                        </div>
                    </div>
                </div>
                <div class="working-time">
                    <h5>Heures d'ouverture</h5>
                    <div>
					<div>Lundi – Vendredi</div>
					<div>09AM – 07PM</div>
					</div>
                </div>
				</div>
				</div>
			</div>
		</div>
		</div>
	

    <!-- Footer -->
	<div class="block-newsletter"> 
				<div class="parallax" data-source-url="img/banner/parallaxx2.jpg" style="background-image:url(img/banner/parallaxx2.jpg); background-position:50% 65.8718%;">
				<div class="container">
					<div class="tt-newsletter col-sm-7">
							<h2 class="text-uppercase">Inscrivez-vous à notre Newsletter</h2>
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
        <%@include file="Footer.jsp"%>
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
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
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
