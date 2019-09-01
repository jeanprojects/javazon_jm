<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">

<head>
<title>Welcome</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/monStyle.css">

<!-- Pour l'affichage pup-up des conditions générales lors du click sur "conditions générales" (créer un compte) -->
<link rel="stylesheet" href="css/scroll_ConditionsUtilisation.css">
<script type="text/javascript" src="text/text_original_conditions_generales_fr.jsp"></script>
<!-- contenu du texte qui s'affichera dans le modal-body -->
<!--===============================================================================================-->

<style type="text/css">
.animsition .bg3.p-t-75.p-b-32 {
	color: #e0a800;
}
</style>
<!--===============================================================================================-->
</head>








<body class="animsition">

	<header class="header-v2"> <!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop p-l-45"> <!-- Logo desktop -->
			<a href="index_page" class="logo"><img
				src="images/logo_javazon.png" alt="IMG-LOGO"></a> <!-- Menu desktop -->
			<div class="menu-desktop">
				<ul class="main-menu">
					<li><a href="index_page">Accueil</a></li>
					<li ><a href="produits_page">Catalogue</a></li>
					<li><a data-toggle="modal" href="#modalRegister">Créer son compte</a></li>
					<li><a data-toggle="modal" href="#modalLogin">S'identifier</a></li>
					<li class="active-menu"><a href="contact_page">Contact</a></li>
				</ul>
			</div>

			<!-- Modal Inscription --------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="modalRegister" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog " role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Créer mon compte</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="modal-body">
							<form role="form">
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Nom</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-user fa" aria-hidden="true"></i></span> <input
												type="text" class="form-control" name="name" id="name"
												placeholder="Entrer votre nom" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="email" class="cols-sm-2 control-label">Email</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
												type="text" class="form-control" name="email" id="email"
												placeholder="Entrer votre Email" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Mot
										de passe</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
												type="password" class="form-control" name="password"
												id="password" placeholder="Entrer un mot de passe" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="confirm" class="cols-sm-2 control-label">Confirmer
										le mot de passe</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
												type="password" class="form-control" name="confirm"
												id="confirm" placeholder="Confirmer votre mot de passe" />
										</div>
									</div>
								</div>

								<div class="form-group">
									<input type="checkbox" id="checkboxRegister"> <label
										for="checkboxRegister" class="white-text form-check-label">Accepter
										les <a href="#" class="green-text font-weight-bold"
										data-toggle="modal" data-target="#myModal"> Conditions générales</a>
									</label>
								</div>
							</form>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>
							<button type="button" class="btn btn-primary">Créer compte</button>
						</div>
					</div>
				</div>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->





			<!-- Modal Conditions générales --------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" id="modal-dialog_conditionsGenerales">
					<div class="modal-content" id="modal-content_conditionsGenerales">

						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">Conditions générales</h4>
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
						</div>


						<div class="modal-body" id="modal-body_conditionsGenerales">
							<div id="box-r-3">
								 <%@include file="../text/text_original_conditions_generales_fr.jsp"    %>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								style="color: black; font-weight: bold;" data-dismiss="modal">Fermer</button>
						</div>
					</div>
				</div>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->


          
           <%@include  file="codeReutilisable/modalLogin.jsp" %>
            
   
			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m h-full">
			
			   <div class="flex-c-m h-full p-r-24" style="color:blue">
			   
						  <%= request.getAttribute("nomDuClient") %>
					
				</div>
				
				<div class="flex-c-m h-full p-r-24">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>
				</div>
				
				<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="3">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index_page"><img src="images/logo_javazon.png" alt="IMG-LOGO"></a>
		</div>
		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
					<i class="zmdizmdi-search"> </i>
				</div>
			</div>
			<div class="flex-c-m h-full p-lr-10 bor5">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="3">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
		</div>
		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>

	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li><a href="index_page">Accueil</a></li>
			<li><a href="produits_page">Catalogue</a></li>
			<li><a href="inscriptionMobile_page">Créer son compte</a></li>
			<li><a href="loginMobil_page">S'identifier</a></li>
			<li><a href="contact_page">Contact</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="images/icons/icon-close2.png" alt="CLOSE">
			</button>
			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search2" placeholder="Recherche...">
			</form>
		</div>
	</div>
	</header>
	
	
	<!-- Cart --------------------------------------------------------------------------------------------------->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2"> Votre commande </span>

				<div
					class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#"
								class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								White Shirt Pleat </a> <span
								class="header-cart-item-info couleurElementCart"> 1 x
								19.00€ </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#"
								class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								Converse All Star </a> <span
								class="header-cart-item-info couleurElementCart"> 1 x
								39.00€ </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#"
								class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								Nixon Porter Leather </a> <span
								class="header-cart-item-info couleurElementCart"> 1 x
								17.00€ </span>
						</div>
					</li>
				</ul>

				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40 couleurElementCart">
						Total: 75.00€</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="panier_page"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							Voir commande </a>
					</div>
				</div>
			</div>
		</div>
	</div>
   <!-------------------------------------------------------------------------------------------------------------->



      
      
      
      
      
      <!--===================================================================================================================================================================-->	
		<div class="container"  > 	   
			   <div class="jumbotron text-center">
				  <!-- <h1>WELCOME PAGE</h1>  -->
                                  <h1> Bonjour <%= request.getAttribute("nomDuClient") %> </h1>
				  <br>
				  
				   
				</div>
			
				<div class="container">
				      <h2> <%= request.getAttribute("message") %> </h1>
				</div>
				
				<div class="panel panel-default">
				  <div class="panel-body">   </div>
				  <div class="panel-footer">  </div>
			   </div>
       	</div>
	<!--===================================================================================================================================================================-->
				
				
				
				
				
				
		<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">Categories</h4>
				<ul>
					<li class="p-b-10"><a href="#"
						class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Femme</a></li>
					<li class="p-b-10"><a href="#"
						class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Homme</a></li>
					<li class="p-b-10"><a href="#"
						class="stext-107  hov-cl1 trans-04 couleurElementFooter"> Sacs</a></li>
				</ul>
			</div>

			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">AIDE</h4>
				<ul>
					<li class="p-b-10"><a href="panier_page" class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Suivi de commandes</a>
					</li>
					<li class="p-b-10"><a href="#" class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Retours / Réclamations</a>
					</li>
					<li class="p-b-10"><a href="about_page" class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							About</a>
					</li>
							
							
				</ul>
			</div>

			<div class="col-sm-6 col-lg-3 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">
					<a href="contact_page" style="color: white;">CONTACT / SUIVI</a>
				</h4>
				<p class="stext-107 size-201 couleurElementFooter">
					N'hésitez pas à nous<a href="contact_page"> contacter</a>
					directement par mail pour toutes questions. Laissez nous vos
					commentaires sur les articles.
				</p>
				<div class="p-t-27">
					<a href="#" class="fs-18 hov-cl1 trans-04 m-r-16"> <i
						class="fa fa-facebook"></i>
					</a> <a href="#" class="fs-18 hov-cl1 trans-04 m-r-16"> <i
						class="fa fa-instagram"></i>
					</a> <a href="#" class="fs-18 hov-cl1 trans-04 m-r-16"> <i
						class="fa fa-pinterest-p"></i>
					</a>
				</div>
			</div>
		</div>
                <p> <%= request.getAttribute("nomDuMail") %> </p>
		<div class="p-t-40">
			<div class="flex-c-m flex-w p-b-18">
				<a href="#" class="m-all-1"> <img
					src="images/icons/icon-pay-01.png" alt="ICON-PAY">
				</a> <a href="#" class="m-all-1"> <img
					src="images/icons/icon-pay-02.png" alt="ICON-PAY">
				</a> <a href="#" class="m-all-1"> <img
					src="images/icons/icon-pay-03.png" alt="ICON-PAY">
				</a> <a href="#" class="m-all-1"> <img
					src="images/icons/icon-pay-04.png" alt="ICON-PAY">
				</a> <a href="#" class="m-all-1"> <img
					src="images/icons/icon-pay-05.png" alt="ICON-PAY">
				</a>
			</div>
			<p class="stext-107 cl6 txt-center couleurElementFooter">Site
				vente en ligne javazon - Projet formation iForm JAVA JEE</p>
		</div>
	</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>			
				
				
      
</body>
</html>