<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
    'order'=>'DESC',
    'orderby'=> 'date',
	'posts_per_page'=>3
));
?>
<div class="row contenedor-blogHome p-0 m-0 pb-3">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_blogHome col-md-12">
            <div class="custom-tituloblog text-uppercase
                        d-flex align-items-center 
                        justify-content-center">Consenti<b>Notas</b>
            </div>
            <div class="row col-12 d-flex flex-column flex-md-row p-0 m-0">
            <?php
                while ($nuevo_arreglo->have_posts()) :
                    $nuevo_arreglo->the_post();
                    ?>
                    <div class="link_blog col-12 col-md-4 w-100 " >
                        <div class="miniatura_blog d-flex align-items-end  p-0 m-0"
                                style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                    height:400px;
                                    background-size: cover;"> 
                                    <a class="titulo-blog w-100 h-50 
                                              d-flex align-items-center text-center" href="<?php the_permalink(); ?>" >      
                                        <h4 class="enlace-blog text-uppercase text-center text-white w-100">
                                            <?php the_title(); ?>
                                        </h4>
                                    </a>
                        </div> 
                        <div class="contenidoInter-blog pr-4 pl-4"><?php the_excerpt(); ?></div>
                    </div>
                <?php 
                endwhile;
                ?>
            </div>
		</div>
        
    <?php endif;?>
</div>