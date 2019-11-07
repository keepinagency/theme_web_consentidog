<?php 

$posts_slides = new WP_Query(array (
    'post_type'     =>'post',
	'category_name' =>'fotoshome',
	'orderby'		=>'rand'
));



?>

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
							<button type="submit" class="btn btn-primary w-75">RESERVAR</button>
						</div>

					</form>

				</div>

			</div>
			<div class="area-vacia col-0 col-lg-8 d-none d-lg-block p-0 m-0">
				&nbsp;
			</div>
		</div>
	</div> <!-- outer_slidehome -->
