<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'blog',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<div class="row contenedor-blogHome p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_blogHome col-md-12">
            <div class="custom-tituloblog h-25 
                        d-flex align-items-center 
                        justify-content-center">ConsentiNotas
            </div>
            <?php
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <div class="link_blog col-md-4">  
                        <div class="miniatura_blog"
                                style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                height:400px;
                                background-size: cover;"> 
                                    <a class="titulo_blog align-content-end" href="<?php the_permalink(); ?>">      
                                        <h4 class="enlace-blog text-uppercase h-50 
                                                    d-flex align-items-center 
                                                    justify-content-center text-white ">
                                            <?php the_title(); ?>
                                        </h4>
                                    </a>
                        </div> 
                    </div>
            <?php endwhile;?>
		</div>
        
    <?php endif;?>
</div>