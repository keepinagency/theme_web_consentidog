<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'servicios',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>

<div class="contenedor-servicioshome p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_servicios">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="link_servicios ">
                    <div class="titulo_servicios"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></div>
                    <div class="miniatura_servicios"><?php the_post_thumbnail('mini');?></div>
                </div>
        <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>