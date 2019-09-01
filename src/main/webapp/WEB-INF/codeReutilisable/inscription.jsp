<%-- 
    Document   : inscription
    Created on : Aug 28, 2019, 11:29:40 PM
    Author     : JM
--%>

                        <!-- Modal Inscription --------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="modalRegister" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog " role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Créer mon
								compte</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="modal-body">
                                                    
                                                    
							<form role="form"   id="form_creerCompte"    action="registrer_page"   method="POST">
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Nom</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> 
                                                                                        <input type="text" class="form-control" name="nameNewClient" id="nameNewClient" placeholder="Entrer votre nom"  required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="emailCreerCompte" class="cols-sm-2 control-label">Email</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> 
                                                                                        <input type="email" class="form-control" name="creer_email" id="creer_email" placeholder="Entrer votre Email"  required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="passwordCreerCompte" class="cols-sm-2 control-label">Mot de passe</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span> 
                                                                                        <input type="password" class="form-control" name="creer_password" id="creer_password"  placeholder="Entrer un mot de passe"  required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="confirm" class="cols-sm-2 control-label">Confirmer le mot de passe</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span> 
                                                                                        <input type="password" class="form-control" name="confirm_creer_password"  id="confirm_creer_password"  placeholder="Confirmer votre mot de passe"  required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<input type="checkbox" id="checkboxRegister"> 
                                                                        <label for="checkboxRegister" class="white-text form-check-label">
                                                                                Accepter les 
                                                                                <a href="#" class="green-text font-weight-bold" data-toggle="modal" data-target="#myModal"> Conditions générales</a>
									</label>
								</div>
                                                                
                                                                <!-- <input type='submit'  onclick='formSubmitCreerCompte()' value='Registrer' id ='registrerCompte'> -->
                                                                
							</form>
						</div>

                                            
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
							<button type="button" class="btn btn-primary" onclick='formSubmitCreerCompte()'> Créer compte</button>
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
							<h4 class="modal-title" id="myModalLabel">Conditions
								générales</h4>
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
						</div>

						<div class="modal-body" id="modal-body_conditionsGenerales">

							<div id="box-r-3">
							 <%@include file="../../text/text_original_conditions_generales_fr.jsp"    %>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" style="color: black; font-weight: bold;" data-dismiss="modal">Fermer</button>
						</div>
					</div>
				</div>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->

