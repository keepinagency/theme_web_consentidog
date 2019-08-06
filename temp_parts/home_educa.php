<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'educa',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>

<div class="contenedor-educa col-md-12">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_educa">
            <p class="titulo-educadog">Educa a tu perro con los mejores</p>
            <?php
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <div class="link_educa col-md-4 text-center">
                        <a class="titulo_educa" style="text-decoration:none"; href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                            <div class="extracto-educa"><?php the_content();?></div>
                        <a href="<?php the_permalink(); ?>">
                            <input class="btneduca text-center" type="submit" name="solicitar" value ="MÁS INFO">
                        </a>
                    </div>
            <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>