<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
	<title>product-detail_page</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png" />
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
	<link rel="stylesheet" type="text/css" href="css/monStyle.css">
	<!--===============================================================================================-->

    <!-- Pour l'affichage pup-up des conditions générales lors du click sur "conditions générales" (créer un compte) -->
	<link rel="stylesheet" href="css/scroll_ConditionsUtilisation.css">
	<script type="text/javascript" src="text/text_original_conditions_generales_fr.txt"></script>
	<!-- contenu du texte qui s'affichera dans le modal-body -->
	<!--===============================================================================================-->
    
</head>






<body>
	    <!-- Header -->
	
		<header class="header-v2">
			<!-- Header desktop -->
			<div class="container-menu-desktop trans-03">
				<div class="wrap-menu-desktop">
					<nav class="limiter-menu-desktop p-l-45">
						<!-- Logo desktop -->
						<a href="index_page" class="logo"><img src="images/logo_javazon.png" alt="IMG-LOGO"></a>
						<!-- Menu desktop -->
						<div class="menu-desktop">
							<ul class="main-menu">
								<li><a href="index_page">Accueil</a></li>
								<li><a href="produits_page">Catalogue</a></li>
								<li><a data-toggle="modal" href="#modalRegister">Créer son compte</a></li>
								<li><a data-toggle="modal" href="#modalLogin">S'identifier</a></li>
								<li><a href="contact_page">Contact</a></li>
							</ul>
						</div>
	
						
                                                
                                                
	                    
	                    
                                                <%@include  file="codeReutilisable/inscription.jsp" %>
                                                <%@include  file="codeReutilisable/modalLogin.jsp"  %>
						
								
	
						<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m h-full">
							<div class="flex-c-m h-full p-r-24">
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search"><i
										class="zmdi zmdi-search"></i></div>
							</div>
							<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
									data-notify="3"><i class="zmdi zmdi-shopping-cart"></i></div>
							</div>
						</div>
					</nav>
				</div>
			</div>
			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile"><a href="index_page"><img src="images/logo_javazon.png" alt="IMG-LOGO"></a></div>
				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<div class="flex-c-m h-full p-r-10">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search"><i
								class="zmdi zmdi-search"></i></div>
					</div>
					<div class="flex-c-m h-full p-lr-10 bor5">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
							data-notify="3"><i class="zmdi zmdi-shopping-cart"></i></div>
					</div>
				</div>
				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze"><span class="hamburger-box"><span
							class="hamburger-inner"></span></span></div>
			</div>
			<!-- Menu Mobile -->
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
					<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search"><img
							src="images/icons/icon-close2.png" alt="CLOSE"></button>
					<form class="wrap-search-header flex-w p-l-15">
						<button class="flex-c-m trans-04"><i class="zmdi zmdi-search"></i></button>
						<input class="plh3" type="text" name="search2" placeholder="Recherche...">
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
					Votre commande
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
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								White Shirt Pleat
							</a>

							<span class="header-cart-item-info couleurElementCart">
								1 x 19.00€
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								Converse All Star
							</a>

							<span class="header-cart-item-info couleurElementCart">
								1 x 39.00€
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04 couleurElementCart">
								Nixon Porter Leather
							</a>

							<span class="header-cart-item-info couleurElementCart">
								1 x 17.00€
							</span>
						</div>
					</li>
				</ul>

				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40 couleurElementCart">
						Total: 75.00€
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="panier_page"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							Voir commande
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3" data-thumb="images/product-detail-01.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-01.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="images/product-detail-02.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-02.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3" data-thumb="images/product-detail-03.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-03.jpg">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
							Lightweight Jacket
						</h4>

						<span class="mtext-106 cl2">
							€58.79
						</span>

						<p class="stext-102 cl3 p-t-23">
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.<br>
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.<br>
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.
							Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
							feugiat.
						</p>

							<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10 alignerStock">
								<div class="size-203 flex-c-m respon6">
									Disponibilité
								</div>
								<div class="size-204 respon6-next">
									<strong>En stock</strong>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-204 flex-w flex-m respon6-next">
									<span style="padding-right:10%;">Quantité</span>
									<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number"
											name="num-product" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
										Ajouter à la commande
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">Description</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#information" role="tab">Informations supplémentaires</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Commentaires</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
								<p class="stext-102 cl6">
									Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla
									sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit
									lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim,
									cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum
									in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor
									sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec
									laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras
									in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.
								</p>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="information" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<ul class="p-lr-28 p-lr-15-sm">
										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Poids
											</span>

											<span class="stext-102 cl6 size-206">
												0.79 kg
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Dimensions
											</span>

											<span class="stext-102 cl6 size-206">
												110 x 33 x 100 cm
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Matériaux
											</span>

											<span class="stext-102 cl6 size-206">
												70% coton
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Couleur
											</span>

											<span class="stext-102 cl6 size-206">
												Noir, Bleu, Gris, Vert, Rouge, Blanc
											</span>
										</li>

										<li class="flex-w flex-t p-b-7">
											<span class="stext-102 cl3 size-205">
												Taille
											</span>

											<span class="stext-102 cl6 size-206">
												XL, L, M, S
											</span>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm">
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
											<div class="size-207">
												<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20">
														Nom du client
													</span>

													<span class="fs-18 cl11">
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star-half"></i>
													</span>
												</div>

												<p class="stext-102 cl6">
													Quod autem in homine praestantissimum atque optimum est, id
													deseruit. Apud ceteros autem philosophos
												</p>
											</div>
										</div>

										<!-- Add review -->
										<form class="w-full">
											<h5 class="mtext-108 cl2 p-b-7">
												Ajouter un commentaire
											</h5>

											<p class="stext-102 cl6">
												Votre adresse email ne sera pas publiée. Les champs obligatoires sont marqué avec *
											</p>

											<div class="flex-w flex-m p-t-50 p-b-23">
												<span class="stext-102 cl3 m-r-16">
													Note du produit
												</span>

												<span class="wrap-rating fs-18 cl11 pointer">
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<input class="dis-none" type="number" name="rating">
												</span>
											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review">Votre commentaire</label>
													<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
														id="review" name="review"></textarea>
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">Nom</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
														type="text" name="name">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">Email</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
														type="text" name="email">
												</div>
											</div>

											<button
												class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
												Envoyer
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25">
				Reférence : JAK-01
			</span>

			<span class="stext-107 cl6 p-lr-25">
				Categories : Veste, Homme
			</span>
		</div>
	</section>
        
        
        <%@include  file="codeReutilisable/footer.jsp" %>
	

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
		$(".js-select2").each(function () {
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
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
		$('.gallery-lb').each(function () { // the containers for all your galleries
			$(this).magnificPopup({
				delegate: 'a', // the selector for gallery item
				type: 'image',
				gallery: {
					enabled: true
				},
				mainClass: 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function (e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function () {
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function () {
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function () {
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function () {
				swal(nameProduct, "is added to cart !", "success");
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