<?php
	if (have_posts()) {
		while ( have_posts() ) : the_post();
			?>
			<div class="singlepost">
				<h2 class="singlepost-tittle"> <?php the_title(); ?></h2>
				<?php the_content(); ?>
			</div>
			<?php 
		endwhile;
	}
?>