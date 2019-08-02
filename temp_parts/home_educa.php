<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'educa',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>

<div class="row contenedor-educa">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_educa col-12">
            <p class="titulo-educadog">Educa a tu perro con los mejores</p>
            <?php
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <div class="link_educa col-4">
                        <a class="titulo_educa" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                            <div class="miniatura_educa"><?php the_post_thumbnail('page');?></div>
                        </a>
                        <div class="extracto"><?php the_excerpt();?></div>
                    </div>
            <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>