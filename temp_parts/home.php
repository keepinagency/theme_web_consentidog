<?php 

$posts_slides = new WP_Query(array (
    'post_type'     =>'post',
	'category_name' =>'fotoshome',
	'orderby'		=>'rand'
));

$i=1;

?>

	<div id="outer_slidehome" class="content_home d-flex flex-column p-0 m-0">
	
		<div id="carruselHome" class="carousel slide carousel-fade p-0 m-0 w-100 col-12" data-ride="carousel" 
			 style="z-index:800; "><!--  -->
			
			<!--Contenido de Slider   role="listbox" -->
			<div class="carousel-inner carrusel-post p-0 m-0 col-12" >
				<?php 
				while($posts_slides->have_posts()) : 
					$posts_slides->the_post();?>
					<!--  -->
					<div class="carousel-item carrusel-imagen p-0 m-0 <?php if ($i == 1) echo 'active'; ?>" 
						style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);"> 
						&nbsp;
					</div>

					<?php 
					$i++; 
				endwhile; 
				wp_reset_postdata(); 
				?>
			</div>

			<!--Botones PREV and NEXT-->
			<!--div class="p-0 m-0 d-none d-sm-block" id="botones" >
				<a class="carousel-control-prev" href="#carruselHome2" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carruselHome2" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div-->
			
		</div>
		
		<div class="outer-form p-0 m-0 w-100 col-12" style="z-index:12000;">
			<div class="area-form col-sm-5 p-0 m-0 align-middle" >
							
				<div class="bg-form-reserva-home pt-4">
					<form>
						<div class="form-group">
							<label for="fecha-llegada" class="col-12 col-form-label text-center">FECHA DE LLEGADA</label>
							<div class="col-12">
								<input class="form-control text-center" 
										type="datetime-local" 
										value="2019-08-01T12:00:00" 
										id="fecha-llegada">
							</div>
						</div>
						<div class="form-group">
						<label for="fecha-retiro" class="col-12 col-form-label text-center">FECHA DE RETIRO</label>
							<div class="col-12">
								<input class="form-control text-center" 
										type="datetime-local" 
										value="2019-08-02T12:00:00" 
										id="fecha-retiro">
							</div>
						</div>
						<div class="col-12 text-center">
							<button type="submit" class="btn btn-light">RESERVAR</button>
						</div>
					</form>
				</div>

			</div>
			<div class="area-vacia col-sm-7 p-0 m-0" >
				&nbsp;
			</div>
		</div>
	</div>