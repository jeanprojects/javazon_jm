            <!-- Modal Login ------------------------------------------------------------------------------------------------------------------------------------------------ -->
			<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">S'identifier</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="modal-body">
							<form role="form"  id="form_validerCompte"  action="validerCompte_page"   method="POST">
								<div class="form-group">
									<label for="email" class="cols-sm-2 control-label">Email</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> 
											  
											  <!--  Très mauvais d'avoir le même id pour plus d'une balise id="email" est utilisé dans une autre balise en haut !! : -->  
											  <!-- <input type="text" class="form-control" name="email" id="email" placeholder="Entrer votre Email" /> --> 
											  
											  <input type="email" class="form-control" name="valider_email" id="valider_email" placeholder="Entrer votre Email" required/>
											  <span id='missMail'></span><br><br><br>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Mot de passe</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span> 
											<input type="password" class="form-control" name="valider_password" id="valider_password" placeholder="Entrer un mot de passe"  required/>
										</div>
									</div>
								</div>
								<!-- <input type='submit'  onclick='formSubmitValiderCompte()' value='Connexion' id ='mailValidation'>  -->
							   
							</form>
						</div>

						<div class="modal-footer">
							<button type="button"  class="btn btn-secondary"  data-dismiss="modal">Fermer</button>
							<button type="button"  class="btn btn-primary"   onclick='formSubmitValiderCompte()'>Connexion</button>
						</div>
					</div>
				</div>
			</div>
			<!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------  -->
           
           
                   