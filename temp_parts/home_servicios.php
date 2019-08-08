<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'servicios',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>

<div class="contenedor-servicioshome">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_servicios">
        <?php
        while ($nuevo_arreglo->have_posts()) :
			$nuevo_arreglo->the_post();?>
                <div class="link_servicios">
                    <div class="titulo_servicios">
                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                    </div>
                    <div class="miniatura_servicios"
                        style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                height:400px;
                                background-size: cover;"> &nbsp;</div>
                </div>
        <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>