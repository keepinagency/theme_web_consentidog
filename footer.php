<?php
	$url_fb = get_option( 'faceurl', 'http://www.facebook.com' );
	$url_in = get_option( 'instaurl', 'http://www.instagram.com' );
	$icono_fb = get_option( 'facelogo', '/img/icoface.png' );
	$icono_in = get_option( 'instalogo', '/img/icoinsta.png' );

	$text_ct = get_option( 'mailtexto', 'loren@ipsum.com' );
	$text_ph = get_option( 'phonenumber', '(9999)999.99.99' );
	$icono_ct = get_option( 'contactologo', '/img/contactomail.png' );
	$icono_ph = get_option( 'phoneicono', '/img/contactophone.png' );
?>

</div><!-- /.container -->
<footer class="footer m-0 p-0">
	<div class="contenedor-footer m-0 p-0 pb-md-2">

		<div class="col-12 col-md-12 d-md-flex flex-md-row p-md-2 text-center justify-content-center">

			<div class="info-contacto col-11 d-md-flex flex-md-row border-bottom p-md-4 p-2">
				<div class="col-md-4 info-contacto p-2 d-none d-md-block">
					<a href="#">
						<i class="fas fa-home"></i> consentidog.com
					</a>
				</div>
				<div class="col-md-4 info-contacto border-left border-right p-2">
					<a href="tel:<?= $text_ph;?>">
						<i class="fas fa-phone-square-alt"></i> <?= $text_ph;?>
					</a>
				</div>
				<div class="col-md-4 info-contacto p-2 d-none d-md-block">
					<a href="mailto:<?= $icono_ct;?>">
						<i class="fas fa-envelope"></i> <?= $text_ct;?>
					</a>
				</div>
			</div>

		</div>

		<div class="ctas-footer col-12 col-md-12 d-md-flex flex-md-row p-0 justify-content-center">

			<div class="col-11 d-md-flex p-0 pb-lg-0 pb-3 pt-lg-3 h-100">

				<div class="col-12 col-md-4 m-0 p-0 pt-md-2 pl-2 text-center ">
					<button type="button" class="btn btn-primary w-75" 
						onclick="window.location.href = '#carruselHome'" >
						SOLICITAR RESERVA
					</button><br/>
					
					<button type="submit" class="btn btn-dark w-75 mt-2"
						data-toggle="modal" data-target="#formmasinf" >
						<i class="fas fa-plus-circle"></i> INFORMACIÓN
					</button>
					
				</div>

				<div class="texto-footer col-12 col-md-4 
							m-0 p-0 pt-4 pt-md-2 d-flex flex-row text-muted">
					<p class="text-center w-100">
						<b>Para tu mejor amigo, el mejor lugar!</b><br /><br />
						WhatsApp: <a href="https://wa.me/584241061261?text=Hola,%20les%20escribo%20desde%20www.consentidog.com">+58 412 7189400</a><br />
						Atención de 8:00am a 6:00pm
					</p>
				</div>

				<div class="col-12 col-md-4 m-0 p-0 pl-2 text-center d-flex flex-row justify-content-center align-top">
					
					<img height="100px" 
						src="<?php echo get_template_directory_uri().'/img/logo_cd_footer_gold.png'?>" 
						class="p-0 m-0"/>
					
				</div>
			</div>
		</div>

		<div class="copy-footer col-12 p-0 pt-2 pb-1 text-center">
			Otro sitio web desarrollado, a medida, por KeepIn Agency. <a href="http://www.keepinagency.com" target="_blank">www.keepinagency.com</a>
		</div>
	</div>
</footer>

<!-- Formulario Modal -->
<div class="modal fade" id="formmasinf" tabindex="-1" role="dialog" 
			aria-labelledby="formmasinfLabel" aria-hidden="true" style="z-index:30000 !important;">
	<div class="modal-dialog" role="document" style="z-index:31000 !important;">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					Indique su correo para contactarle:
				</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!-- BODY MODAL --->
				<form name="from-correo" id="formcorreo" class="d-flex flex-column justify-content-center 
								align-items-center flex-wrap h-100 p-0 m-0 needs-validation" 
							method="post"
							action="<?php echo get_template_directory_uri().'/temp_parts/solicitamasinfo.php'; ?>" novalidate>
					<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
						<div class="form-group col-12 p-0 m-0">
							<!--label for="correo" class="col-12 col-form-label-sm text-center p-0 m-0 ">
								Correo Electrónico:
							</label-->
							<input class="form-control form-control-sm text-center p-0 m-0" type="email"
									value="" placeholder="ej: sucorreo@correo.com"
									id="correo" name="correo" required>
						</div>	
					</div>

					<div class="h-0 w-100 w-lg-75 d-flex flex-row p-3 justify-content-center">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</form>
				
			</div>
			<div class="modal-footer">
				&nbsp;
				<!--button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
				<button type="button" class="btn btn-primary">Enviar Reserva</button-->
			</div>
		</div>
	</div>
</div>

<script>
	(function() {
		$('#formmasinf').on('show.bs.modal', function (event) {
			/**/
		});
	});
</script>


<?php wp_footer(); ?>
<script>
    new WOW().init();
</script>
</body>
</html>
