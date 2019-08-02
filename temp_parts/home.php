<?php
	if (have_posts()) {
		while ( have_posts() ) : the_post();
			?>
			<div class="row home-post">
				<h2 class="home-post-tittle"> <?php //the_title(); ?></h2>
				<div class="contenido-home col-4"><?php the_content(); ?></div>
			</div>
			<?php 
		endwhile;
	}
?>