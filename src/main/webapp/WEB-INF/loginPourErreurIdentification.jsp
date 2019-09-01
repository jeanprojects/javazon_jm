<html lang="fr">

<head>
<title>Identification</title>
<meta charset="UTF-8">
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
						<!-- <li ><a href="produits_page">Catalogue</a></li>  --> 
						<!--  <li> <a data-toggle="modal" href="#modalRegister">Créer son compte</a></li>  -->
						<!-- <li><a data-toggle="modal" href="#modalLogin">S'identifier</a></li>           -->
						<li class="active-menu"><a href="contact_page">Contact</a></li>
					</ul>
				</div>
		    </div>
		</div><br><br>



		<!-- Modal Login-->
		<h4> <%= request.getAttribute("message") %> </h4>
		<br><br>
		<h5 class="modal-title" id="exampleModalLabel">S'identifier</h5>
		<form role="form"   id="form_validerCompte"   action="validerCompte_page"   method="POST">
			<div class="form-group">
				<label for="email" class="cols-sm-2 control-label">Email</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> 
					    <input type="text" class="form-control" name="valider_email" id="valider_email" placeholder="Entrer votre Email" />
					</div>
				</div>
			</div>
	
			<div class="form-group">
				<label for="password" class="cols-sm-2 control-label">Mot de passe</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span> 
							<input type="password" class="form-control" name="valider_password" id="valider_password" placeholder="Entrer un mot de passe" />
					</div>
				</div>
			</div>
		</form>
		<a href="index_page"><button type="button" class="btn btn-secondary">Fermer</button></a>
		<button type="button"  class="btn btn-primary" onclick='formSubmitValiderCompte()'>Connexion</button>
	
	    <br><br><br>
	</header>
	
	
	
	
	<!--===================================================================================================================================================================-->	
		<div class="container"  > 	   
			   	
				<div class="container">
				      
				      
				      
				      
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
			<div class="col-sm-6 col-lg-4 p-b-50">
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

			<div class="col-sm-6 col-lg-4 p-b-50">
				<h4 class="stext-301 cl0 p-b-30">AIDE</h4>
				<ul>
					<li class="p-b-10"><a href="panier_page"
						class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Suivi de commandes</a></li>
					<li class="p-b-10"><a href="#"
						class="stext-107  hov-cl1 trans-04 couleurElementFooter">
							Retours / Réclamations</a></li>
				</ul>
			</div>

			<div class="col-sm-6 col-lg-4 p-b-50">
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
	

	
	
	
	
	
	
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	
	
	<!--===============================================================================================-->
    <!--  invocation ajax: on reste sur la même page index.jsp -->

    <script> function formSubmitValiderCompte() {
                        document.getElementById("form_validerCompte").submit();
             }
    </script>
    <!--===============================================================================================-->
</body>
</html>