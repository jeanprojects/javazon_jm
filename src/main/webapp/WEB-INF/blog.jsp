<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<title>Blog</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<!-- Pour l'affichage pup-up des conditions générales lors du click sur "conditions générales" (créer un compte) -->
<link rel="stylesheet" href="css/scroll_ConditionsUtilisation.css">
<script type="text/javascript" src="text/text_original_conditions_generales_fr.txt"></script>
<!-- contenu du texte qui s'affichera dans le modal-body -->
<!--===============================================================================================-->

</head>



<body class="animsition">
	
	<!-- Header -->
	<header class="header-v2"> <!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop p-l-45"> <!-- Logo desktop -->
			<a href="index_page" class="logo"><img src="images/logo_javazon.png" alt="IMG-LOGO"></a> <!-- Menu desktop --------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="menu-desktop">
				<ul class="main-menu">
					<li class="active-menu"><a href="index_page">Accueil</a></li>
					<li><a href="produits_page">Catalogue</a></li>
					<li><a data-toggle="modal" href="#modalRegister">Créer son compte</a></li>
					<li><a data-toggle="modal" href="#modalLogin">S'identifier</a></li>
					<li><a href="contact_page">Contact</a></li>
				</ul>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->


			


                        <%@include  file="codeReutilisable/inscription.jsp" %>
                        <%@include  file="codeReutilisable/modalLogin.jsp"  %>

			

			<!-- Icon header --------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="wrap-icon-header flex-w flex-r-m h-full">
				<div class="flex-c-m h-full p-r-24">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>
				</div>

				<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
						data-notify="3">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index_page"><img src="images/logo_javazon.png"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>

			<div class="flex-c-m h-full p-lr-10 bor5">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="3">
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
      
      
      
      
      <!--  voir si dessous OK jusqu'à fin header -->
      
	  <!-- Header Mobile -->
	  <div class="wrap-header-mobile">
	    <!-- Logo moblie -->
	    <div class="logo-mobile"> <a href="index_page"><img src="images/logo_javazon.png" alt="IMG-LOGO"></a> </div>
	    <!-- Icon header -->
	    <div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
	      <div class="flex-c-m h-full p-r-10">
	        <div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search"> <i class="zmdi zmdi-search"></i> </div>
          </div>
	      <div class="flex-c-m h-full p-lr-10 bor5">
	        <div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2"> <i class="zmdi zmdi-shopping-cart"></i> </div>
          </div>
        </div>
	    <!-- Button show menu -->
	    <div class="btn-show-menu-mobile hamburger hamburger--squeeze"> <span class="hamburger-box"> <span class="hamburger-inner"></span> </span> </div>
      </div>
	  <!-- Menu Mobile -->
	  <div class="menu-mobile">
	    <ul class="main-menu-m">
	      <li> Accueil
	        <ul class="sub-menu-m">
	          <li><a href="index_page">Homepage 1</a></li>
	          <li><a href="home-02.html">Homepage 2</a></li>
	          <li><a href="home-03.html">Homepage 3</a></li>
            </ul>
	        <span class="arrow-main-menu-m"> <i class="fa fa-angle-right" aria-hidden="true"></i> </span> </li>
	      <li> <a href="panier_page" class="label1 rs1" data-label1="hot">Features</a> </li>
	      <li> <a href="blog_page">Blog</a> </li>
	      <li> <a href="about_page">About</a> </li>
	      <li> <a href="contact_page">Contact</a> </li>
        </ul>
      </div>
	  <!-- Modal Search -->
	  <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
	    <div class="container-search-header">
	      <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search"> <img src="images/icons/icon-close2.png" alt="CLOSE"> </button>
	      <form class="wrap-search-header flex-w p-l-15">
	        <button class="flex-c-m trans-04"> <i class="zmdi zmdi-search"></i> </button>
	        <input class="plh3" type="text" name="search2" placeholder="Search...">
          </form>
        </div>
      </div>
</header>
   
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
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
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat
							</a>

							<span class="header-cart-item-info">
								1 x $19.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star
							</a>

							<span class="header-cart-item-info">
								1 x $39.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather
							</a>

							<span class="header-cart-item-info">
								1 x $17.00
							</span>
						</div>
					</li>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="panier_page" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="panier_page" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Blog
		</h2>
	</section>	


	<!-- Content page -->
<section class="bg0 p-t-75 p-b-120">
  <div class="container">
	<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
					  <h3 class="mtext-111 cl2 p-b-16"> A propose de nous ...</h3>
					  <p class="stext-113 cl6 p-b-26">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.
						</p>

						<p class="stext-113 cl6 p-b-26">
							Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula. 
						</p>

						<p class="stext-113 cl6 p-b-26">
							Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="images/blog-01.jpg" alt="IMG">
						</div>
					</div>
				</div>
		  </div>
</div>
	</section>	
	
		

	<!-- Footer -->
	
	<footer class="bg3 p-t-75 p-b-32">
	  <div class="container">
	    <div class="row">
	      <div class="col-sm-6 col-lg-3 p-b-50">
	        <h4 class="stext-301 cl0 p-b-30"> Categories </h4>
	        <ul>
	          <li class="p-b-10"> <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Femme</a></li>
	          <li class="p-b-10">Homme</li>
	          <li class="p-b-10"> <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Chaussures</a></li>
	          <li class="p-b-10"><a href="#" class="stext-107 cl7 hov-cl1 trans-04">Montres </a></li>
            </ul>
          </div>
	      <div class="col-sm-6 col-lg-3 p-b-50">
	        <h4 class="stext-301 cl0 p-b-30">AIDE</h4>
	        <ul>
	          <li class="p-b-10"> <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Suivi de commandes</a></li>
	          <li class="p-b-10"> <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Retours / Réclamations</a></li>
	          <li class="p-b-10">Expédition</li>
	          <li class="p-b-10"> <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a> </li>
              <li> <a href="blog_page">Blog</a> </li>
            </ul>
          </div>
	      <div class="col-sm-6 col-lg-3 p-b-50">
	        <h4 class="stext-301 cl0 p-b-30">CONTACT / SUIVI</h4>
	        <p class="stext-107 cl7 size-201"> N'hésitez pas à nous contacter directement par mail pour toutes questions. Laissez nous vos commentaires sur les articles.</p>
	        <div class="p-t-27"> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i class="fa fa-facebook"></i> </a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i class="fa fa-instagram"></i> </a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i class="fa fa-pinterest-p"></i> </a> </div>
          </div>
        </div>
	    <div class="p-t-40">
	      <div class="flex-c-m flex-w p-b-18"> <a href="#" class="m-all-1"> <img src="images/icons/icon-pay-01.png" alt="ICON-PAY"> </a> <a href="#" class="m-all-1"> <img src="images/icons/icon-pay-02.png" alt="ICON-PAY"> </a> <a href="#" class="m-all-1"> <img src="images/icons/icon-pay-03.png" alt="ICON-PAY"> </a> <a href="#" class="m-all-1"> <img src="images/icons/icon-pay-04.png" alt="ICON-PAY"> </a> <a href="#" class="m-all-1"> <img src="images/icons/icon-pay-05.png" alt="ICON-PAY"> </a> </div>
	      <p class="stext-107 cl6 txt-center"> Site vente en ligne javazon - Projet formation iForm JAVA JEE</p>
        </div>
      </div>
</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
    <!--===============================================================================================-->
	<script src="js/main.js"></script>
	


   <!--===============================================================================================-->
    <!--  invocation ajax: on reste sur la même page index.jsp -->

    <script> function formSubmitValiderCompte() {
                        document.getElementById("form_validerCompte").submit();
             }
    </script>
    
    
    <script> function formSubmitCreerCompte() {
                        document.getElementById("form_creerCompte").submit();
             }
    </script>
    <!--===============================================================================================-->
      
</body>
</html>