<?php 

//$img_destacada_url = get_the_post_thumbnail_url();

$posts_slides = new WP_Query(array (
    'post_type'     =>'post',
    'category_name' =>'fotoshome',
));

$i=1;

?>

	<div id="outer_slidehome" class="content_home flex-grow-1 d-flex p-0 m-0">
	
		<div id="carruselHome" class="carousel slide carousel-fade p-0 m-0 w-100" data-ride="carousel" style="z-index:800; ">
			
			<!--Contenido de Slider-->
			<div class="carousel-inner carrusel-post p-0 m-0 col-12" role="listbox" >
				<?php 
				while($posts_slides->have_posts()) : 
					$posts_slides->the_post();?>
					<div class="carousel-item carrusel-imagen p-0 m-0 <?php if ($i == 1) echo 'active'; ?>" 
						style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>); "> 
						&nbsp;
	
						<!--img class="d-block w-100" src="<?php //echo get_the_post_thumbnail_url(); ?>"-->
		
						
						<!--div class="carrusel-content carousel-caption col-lg-6 d-none d-sm-block">
							<h3><?php //the_title();?></h3>
							<p><?php //echo get_the_content();?></p>
						</div-->

					</div>
					<?php 
					$i++; 
				endwhile; 
				wp_reset_postdata(); 
				?>
			</div>

			<!--Botones PREV and NEXT-->
			<!--div class="p-0 m-0 d-none d-sm-block" id="botones" >
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
	</div>