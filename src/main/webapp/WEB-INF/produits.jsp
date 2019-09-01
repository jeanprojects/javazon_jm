<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">

<head>
<title>Catalogue</title>

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
<script type="text/javascript" src="text/text_original_conditions_generales_fr.txt"></script>
<!-- contenu du texte qui s'affichera dans le modal-body -->
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
					<li class="active-menu"><a href="produits_page">Catalogue</a></li>
					<li><a data-toggle="modal" href="#modalRegister">Créer son
							compte</a></li>
					<li><a data-toggle="modal" href="#modalLogin">S'identifier</a></li>
					<li><a href="contact_page">Contact</a></li>
				</ul>
			</div>

			
                        <%@include  file="codeReutilisable/inscription.jsp" %>
			
			<%@include  file="codeReutilisable/modalLogin.jsp" %>
			
		
			<!-- Icon header -->
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
					<iclass="zmdizmdi-search"> </i>
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

	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li><a href="index_page">Accueil</a></li>
			<li><a href="produits_page">Catalogue</a></li>
			<li><a href="inscriptionMobile_page">Créer son compte</a></li>
			<li><a href="loginMobile_page">S'identifier</a></li>
			<li><a href="contact_page">Contact</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="images/icons/icon-close2.png" alt="CLOSE">
			</button>
			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search2"
					placeholder="Recherche...">
			</form>
		</div>
	</div>
	</header>





	<!-- Cart -->
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


	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">Tous les produits</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".women">Femme</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".men">Homme</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".bag">Sacs</button>
				</div>

				<div class="flex-w flex-c-m m-tb-10">
					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Recherche
					</div>
				</div>

				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
							name="search-product" placeholder="Recherche">
					</div>
				</div>
			</div>

			<div class="row isotope-grid">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-01.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-seul_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Esprit Ruffle Shirt </a> <span class="stext-105 cl3"> €16.64
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-02.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Herschel supply </a> <span class="stext-105 cl3"> €35.31 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-03.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Only Check Trouser </a> <span class="stext-105 cl3"> €25.50
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-04.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Classic Trench Coat </a> <span class="stext-105 cl3"> €75.00
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-05.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Front Pocket Jumper </a> <span class="stext-105 cl3"> €34.75
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-06.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Vintage Inspired Classic </a> <span class="stext-105 cl3">
									€93.20 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-07.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Shirt in Stretch Cotton </a> <span class="stext-105 cl3">
									€52.66 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-08.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Pieces Metallic Printed </a> <span class="stext-105 cl3">
									€18.96 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-09.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Converse All Star Hi Plimsolls </a> <span class="stext-105 cl3">
									€75.00 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-10.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Femme T-Shirt In Stripe </a> <span class="stext-105 cl3">
									€25.85 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-11.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Herschel supply </a> <span class="stext-105 cl3"> €63.16 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-12.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Herschel supply </a> <span class="stext-105 cl3"> €63.15 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-13.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									T-Shirt with Sleeve </a> <span class="stext-105 cl3"> €18.49
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-14.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Pretty Little Thing </a> <span class="stext-105 cl3"> €54.79
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-15.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Mini Silver Mesh Watch </a> <span class="stext-105 cl3">
									€86.85 </span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-16.jpg" alt="IMG-PRODUCT"> <a
								href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Voir produit </a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail_page"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Square Neck Back </a> <span class="stext-105 cl3"> €29.64 </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        
        
        <%@include  file="codeReutilisable/footer.jsp" %>
	


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
								Jacket</h4>

							<span class="mtext-106 cl2"> €58.79 </span> <a
								href="product-seul_page" class="alignerCommentaire mtext-105">
								Détails produit</a>

							<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
								pharetra viverra. Nam vitae luctus ligula. Mauris consequat
								ornare feugiat. Nulla eget sem vitae eros pharetra viverra. Nam
								vitae luctus ligula. Mauris consequat ornare feugiat. Nulla eget
								sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat. Nulla eget sem vitae eros pharetra
								viverra. Nam vitae luctus ligula. Mauris consequat ornare
								feugiat. Nulla eget sem vitae eros pharetra viverra. Nam vitae
								luctus ligula. Mauris consequat ornare feugiat. Nulla eget sem
								vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat. Nulla eget sem vitae eros pharetra
								viverra. Nam vitae luctus ligula. Mauris consequat ornare
								feugiat. Nulla eget sem vitae eros pharetra viverra. Nam vitae
								luctus ligula. Mauris consequat ornare feugiat. Nulla eget sem
								vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat. Nulla eget sem vitae eros pharetra
								viverra. Nam vitae luctus ligula. Mauris consequat ornare
								feugiat. Nulla eget sem vitae eros pharetra viverra. Nam vitae
								luctus ligula. Mauris consequat ornare feugiat. Nulla eget sem
								vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat. Nulla eget sem vitae eros pharetra
								viverra. Nam vitae luctus ligula. Mauris consequat ornare
								feugiat. Nulla eget sem vitae eros pharetra viverra. Nam vitae
								luctus ligula. Mauris consequat ornare feugiat. Nulla eget sem
								vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat. Nulla eget sem vitae eros pharetra
								viverra. Nam vitae luctus ligula. Mauris consequat ornare
								feugiat. Nulla eget sem vitae eros pharetra viverra. Nam vitae
								luctus ligula. Mauris consequat ornare feugiat. Nulla eget sem
								vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris
								consequat ornare feugiat.</p>

							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10 alignerStock">
									<div class="size-203 flex-c-m respon6">Disponibilité</div>
									<div class="size-204 respon6-next">
										<strong>En stock</strong>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<span style="padding-right: 10%;">Quantité</span>
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Ajouter à la commande</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
			e.preventDefault();
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on(
							'click',
							function() {
								swal(nameProduct, "est ajouté à la commande !",
										"success");
							});
				});
	</script>
	<!--===============================================================================================-->

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