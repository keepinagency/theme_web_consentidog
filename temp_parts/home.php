<?php 

$posts_slides = new WP_Query(array (
    'post_type'     =>'post',
	'category_name' =>'fotoshome',
	'orderby'		=>'rand'
));



?>
	<!-- Formulario Modal -->
	<div class="modal fade" id="formaddreserva" tabindex="-1" role="dialog" 
				aria-labelledby="exampleModalLabel" aria-hidden="true" style="z-index:30000 !important;">
		<div class="modal-dialog" role="document" style="z-index:31000 !important;">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">
						Complete la reserva
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
							action="<?php echo get_template_directory_uri().'/temp_parts/enviareserva.php'; ?>" novalidate>

							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-6 p-0 m-0">
									<label for="modal-fecha-llegada" class="col-12 col-form-label-sm text-center p-0 m-0">Llegada:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" 
											type="datetime-local"
											value="2019-08-01 12:00:00" 
											id="modal-fecha-llegada" name="modal-fecha-llegada" readonly>
								</div>
								<div class="form-group col-6 p-0 m-0">
									<label for="modal-fecha-retiro" class="col-12 col-form-label-sm text-center p-0 m-0 ">Salida:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" 
										type="datetime-local" 
										value="2019-08-02T12:00:00" 
										id="modal-fecha-retiro" name="modal-fecha-retiro" readonly>
								</div>	
							</div>
							
							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-12 p-0 m-0">
									<label for="servicio" class="col-12 col-form-label-sm text-center p-0 m-0 ">Servicio a Realizar:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" 
											value="--- ----" 
											id="modal-servicio" name="modal-servicio" readonly>
								</div>
							</div>

							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-12 p-0 m-0">
									<label for="nombres" class="col-12 col-form-label-sm text-center p-0 m-0 ">Indique su nombre:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" 
											value="" 
											id="nombres" name="nombres" required>
								</div>
							</div>

							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-6 p-0 m-0">
									<label for="telefono" class="col-12 col-form-label-sm text-center p-0 m-0">Num. de Teléfono:</label>
									<input class="form-control form-control-sm text-center p-0 m-0"
											value="" id="telefono" name="telefono" onkeypress="return validacel();" required>
								</div>
								<div class="form-group col-6 p-0 m-0">
									<label for="correo" class="col-12 col-form-label-sm text-center p-0 m-0 ">Correo Electrónico:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" type="email"
											value="" 
											id="correo" name="correo" required>
								</div>	
							</div>


							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-12 p-0 m-0">
									<label for="nom_mascota" class="col-12 col-form-label-sm text-center p-0 m-0 ">Nombre de su mascota:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" type="text"
											value="" 
											id="nom_mascota" name="nom_mascota" required>
								</div>
							</div>

							<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
								<div class="form-group col-12 p-0 m-0">
									<label for="raza" class="col-12 col-form-label-sm text-center p-0 m-0 ">Raza de su mascota:</label>
									<input class="form-control form-control-sm text-center p-0 m-0" type="text"
											value="" 
											id="raza" name="raza" required>
								</div>
							</div>
							<!-- 

								Usuario: Nombres, teléfono y correo
								Mascota: Nombre y raza
							-->
							<div class="h-0 w-100 w-lg-75 d-flex flex-row p-3 justify-content-center">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>&nbsp;&nbsp;
								<button type="submit" class="btn btn-primary">Enviar Reserva</button>
							</div>
					</form>

					<script>
					// Example starter JavaScript for disabling form submissions if there are invalid fields
						(function() {
						'use strict';
						window.addEventListener('load', function() {
							// Fetch all the forms we want to apply custom Bootstrap validation styles to
							var forms = document.getElementsByClassName('needs-validation');
							// Loop over them and prevent submission
							var validation = Array.prototype.filter.call(forms, function(form) {
								form.addEventListener('submit', function(event) {
									if (form.checkValidity() === false) {
									event.preventDefault();
									event.stopPropagation();
									}
									form.classList.add('was-validated');
								}, false);
							});
						}, false);
						})();
						
					</script>
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
			$('#formaddreserva').on('show.bs.modal', function (event) {
				/*$("#modal-fecha-llegada").val("1236")
				$("#modal-fecha-retiro").val("12asasa36")*/
				/*modal.find('.modal-body #modal-fecha-retiro').val("12asasa36")
				/*var button = $(event.relatedTarget) // Button that triggered the modal
				var recipient = button.data('whatever') // Extract info from data-* attributes
				// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
				// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.*/
				var modal = $(this)
				modal.find('.modal-body #modal-fecha-retiro').val("12asasa36")
			});
		});
	</script>

	<div id="outer_slidehome" class="content_home d-flex flex-column p-0 m-0 h-100">
		<div id="carruselHome" class="carousel slide p-0 m-0 w-100 h-100 d-block col-12" data-ride="carousel" style="z-index:800; ">

			<div class="carousel-inner" >
				<?php 
				$i=1;
				while($posts_slides->have_posts()) : 
					$posts_slides->the_post();?>

					<div class="carousel-item <?php if ($i == 1) echo 'active'; ?>"
						style="background-image: url('<?php echo get_the_post_thumbnail_url(); ?>');"> 
						<!--img class="d-block w-100" src="<?php //echo get_the_post_thumbnail_url(); ?>" alt=""-->
						&nbsp;
					</div>

					<?php 
					$i++; 
				endwhile; 
				wp_reset_postdata(); 
				?>
			</div>
			<!--Indicadores de Slides-->
			<?php 
			$x=1;
			?>
			<ol class="carousel-indicators" style="z-index:20000;">
				<?php 
				for ($x = 0; $x < $i-1 ; $x++) {
					?>
					<li data-target="#carruselHome" data-slide-to="<?php echo $x ?>" class="<?php if ($x == 0) echo 'active'; ?>"></li>
					<?php
				}
				?>
			</ol>
			<!--Botones PREV and NEXT-->
			<!--div class="p-0 m-0 d-none d-sm-block" id="botones" style="z-index:20000;">
				<a class="carousel-control-prev" href="#carruselHome" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carruselHome" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div-->
			
		</div>
		
		<div class="outer-form p-0 m-0 w-100 h-100 col-12 pl-0 pl-lg-5 pt-0 pt-lg-5 pr-0 d-flex border " style="z-index:1000;">
			<div class="area-form col-sm-4 d-flex flex-column justify-content-center align-items-center  h-75 m-0 p-4 ">
							
				<div class="bg-form-reserva-home col-12 h-100 w-100 p-0 pt-3 pt-lg-0 pb-4 pb-lg-0 pl-4 pr-4 m-0" >
					
					<form class="d-flex flex-column justify-content-center align-items-center flex-wrap h-100 p-0 m-0">

						<div class="form-group h-0 w-100 w-lg-75">
							<label for="fecha-llegada" class="col-12 col-form-label text-center p-0 m-0">Fecha de Llegada</label>
							<div class="col-12 p-0 m-0">
								<input class="form-control  text-center p-0 m-0" 
										type="datetime-local" 
										value="2019-08-01T12:00:00" 
										id="fecha-llegada">
							</div>
						</div>
						
						<div class="form-group p-0 m-0 h-0 w-100 w-lg-75 p-0 m-0 ">
							<label for="fecha-retiro" class="col-12 col-form-label text-center p-0 m-0 ">Fecha de Retiro</label>
							<div class="col-12 p-0 m-0">
								<input class="form-control  text-center p-0 m-0" 
										type="datetime-local" 
										value="2019-08-02T12:00:00" 
										id="fecha-retiro">
							</div>
						</div>
						
						<?php
							include(get_template_directory() ."/temp_parts/rest_services.php");
						?>

						<div class="form-group text-center p-0 m-0 h-0 w-100 pt-4">
							<!--button type="submit" class="btn btn-primary w-75">RESERVAR</button-->
							<button type="button" class="btn btn-primary w-75" 
									data-toggle="modal" data-target="#formaddreserva"
									onClick="pasarvalores();">
							RESERVAR
							</button>
						</div>

						<script>
							function pasarvalores(){
								varllegada = document.getElementById('fecha-llegada').value;
								varretiro  = document.getElementById('fecha-retiro').value;
								selservicios = document.getElementById('servicios-sel');
								varservicio  = selservicios.options[selservicios.selectedIndex].text;

								document.getElementById('modal-fecha-llegada').value = varllegada;
								document.getElementById('modal-fecha-retiro').value = varretiro;
								document.getElementById('modal-servicio').value = varservicio;
							}
						</script>
						<!-- Button trigger modal -->
						

						




					</form>

				</div>

			</div>
			<div class="area-vacia col-0 col-lg-8 d-none d-lg-block p-0 m-0">
				&nbsp;
			</div>
		</div>
	</div> <!-- outer_slidehome -->
