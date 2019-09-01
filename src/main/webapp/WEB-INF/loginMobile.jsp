<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connexion</title>
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
<link rel="stylesheet" href="css/style_inscription_site_web.css">
<link rel="stylesheet" href="vendor/bootstrap4-fs-modal-master/dist/css/bootstrap-fs-modal.min.css">

<!-- Pour l'affichage pup-up des conditions générales lors du click sur "conditions générales" (créer un compte) -->
<link rel="stylesheet" href="css/scroll_ConditionsUtilisation.css">
<script type="text/javascript" src="text/text_original_conditions_generales_fr.txt"></script>
<!-- contenu du texte qui s'affichera dans le modal-body -->
<!--===============================================================================================-->

<style type="text/css">
.animsition .bg3.p-t-75.p-b-32 {
	color: #e0a800;
}
</style>
</head>





<body>
	<!-- Modal Login-->
	<h5 class="modal-title" id="exampleModalLabel">S'identifier</h5>
        
	<form role="form"   id="form_validerCompte"   action="validerCompte_page"   method="POST" >
		<div class="form-group">
			<label for="email" class="cols-sm-2 control-label">Email</label>
			<div class="cols-sm-10">
				<div class="input-group">
					<span class="input-group-addon">
                                            <i class="fa fa-envelope fa" aria-hidden="true"></i></span> 
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