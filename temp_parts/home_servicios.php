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
                    <a href="<?php the_permalink();?>">
                        <div class="link_servicios color22 found22">
                            <div class="titulo_servicios text-uppercase text-left">
                                <?php the_title();?>
                            </div>
                            <div class="miniatura_servicios"
                                style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                        height:350px;
                                        background-size: cover;"
                                onMouseOver="this.style.backgroundColor='#FE330A';
                                             this.style.backgroundBlendMode='multiply'"
                                onMouseOut="this.style.backgroundColor=''"> &nbsp;
                            </div>
                        </div>
                    </a>  
            <?php endwhile;?>
		</div>
    <?php endif;?>
</div>