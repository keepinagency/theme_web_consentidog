<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<div class="contenedor-blogHome">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_blogHome">
            <div class="custom-tituloblog">ConsentiNotas</div>
            <?php
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <div class=link_blog>
                        <a class="titulo_blog" href="<?php the_permalink(); ?>"><?php the_title(); ?>
                            <div class="miniatura_blog"
                                style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                height:400px;
                                background-size: cover;"> &nbsp;</div>
                        </a>
                            <div class="extracto"><?php //the_excerpt();?></div>
                    </div>
            <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>