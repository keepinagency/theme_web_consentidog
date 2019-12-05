<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'educa',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<!-- d-flex flex-column flex-wrap -->
<div class="contenedor-educa row col-12 p-0 m-0 w-100 h-100 d-flex flex-column flex-lg-row pb-3 pb-lg-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        
        <div class="row area-tit-educa col col-lg-12 d-flex align-items-center justify-content-center p-0 m-0">
            
            <h2 class="text-uppercase titulo-educadog  p-0 m-0 wow rubberBand" 
                data-wow-offset="10" data-wow-delay="3s" data-wow-iteration="1" data-wow-duration="1s">
                Educa a tu perro con los mejores
            <h2>
            
        </div>
        
        <div class="col area-cont-educa d-flex flex-column flex-lg-row justify-content-center h-100 pb-0 pb-lg-5 m-0">

            <?php
            $i=1;
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?> 
                
                    <!--   -->

                    <div class="outer-educa col col-lg-4 p-2 m-0 text-center wow bounceInRight" 
                                data-wow-duration="<?php echo $i;?>s" data-wow-delay="0,<?php echo $i;?>s">

                        <div class="link_educa m-0 p-0 pl-1 pr-1 pl-lg-2 pr-lg-2 h-100 text-center">
                            
                            <div class="outer_titulo_educa col-12 p-0 m-0 text-dark border-bottom border-dark
                                        d-flex align-items-center justify-content-center">
                                <!-- -->
                                <a href="<?php the_permalink(); ?>" 
                                    class="titulo_educa w-100 m-0 p-0">
                                    <h4 class="text-uppercase text-dark p-0 m-0">
                                        <?php the_title(); ?>
                                    </h4>
                                </a>

                            </div>

                            <div class="extracto-educa p-1 m-3 p-lg-3" >
                                <?php the_content();?>
                            </div>

                            <!--div class="area-btn-educa">
                                <form action="<?php //echo get_permalink();?>">
                                    <input class="btn btn-light btn-masinfo" 
                                        type="submit" name="solicitar" 
                                        value ="MÁS INFO">
                                </form>
                            </div-->
                        </div>

                    </div>

                <?php 
                $i++;
            endwhile;?>
        </div>
    <?php endif;?>
</div>