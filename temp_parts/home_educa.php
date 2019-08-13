<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'educa',
    'order'=>'ASC',
	'posts_per_page'=>3
));
?>
<div class="row contenedor-educa col-md-12 p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="row p-0 m-0">
            <div class="col-12 area-tit-educa text-center p-0 m-0 ">
                <h2 class="text-uppercase text-secondary h-100 titulo-educadog
                          d-flex align-items-center justify-content-center">
                    Educa a tu perro con los mejores
                <h2>
            </div>
            <div class="row col-12 area-cont-educa d-flex justify-content-center pl-5 pr-5 pb-5 pt-0 m-0" >
                <?php
                while ($nuevo_arreglo->have_posts()) :
                    $nuevo_arreglo->the_post();?>
                        <div class="col-3 p-0 h-100 text-center" >
                            <div class="link_educa m-2 h-100 text-center">
                                <div class="col-12 p-0 m-0 h-25 text-dark
                                            d-flex align-items-center justify-content-center">
                                    <a href="<?php the_permalink(); ?>" class="titulo_educa w-50">
                                        <h4 class="text-uppercase text-dark">
                                            <?php the_title(); ?>
                                        </h4>
                                    </a>
                                </div>

                                <div class="extracto-educa" >
                                    <?php the_content();?>
                                </div>

                                <div class="area-btn-educa">
                                    <input class="btn btn-light btn-masinfo" type="submit" name="solicitar" value ="MÁS INFO">
                                </div>
                            </div>
                        </div>
                <?php endwhile;?>
            </div>
		</div>
    <?php endif;?>
</div>