<?php 
/*
Template Name: Servicios
Template Post Type: Page
*/
get_header();
$arregloservicios = new WP_Query(array(
    'post_type'     => 'post',
    'category_name' => 'servicios',
    'orderby'       => 'slug',
    'order'         => 'ASC',
));
?>    
<div id="servicios" class="row contenedor-total col-md-12 p-0 m-0">
    <?php
    if ($arregloservicios->have_posts()) :?>
        <div class="row p-0 m-0 h-100">
            <div class="row col-12 m-0 p-0">
                <?php 
                    while ($arregloservicios->have_posts()) : $arregloservicios->the_post();?>
                    <div class="cont col-md-12 m-0 p-0" 
                        style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');
                        background-repeat:no-repeat; background-size:100%;">
                        <div class="contenedor-servicios mt-5 pt-5">
                            <div class="col-md-12 m-0 p-5">
                                <h2 class="text-uppercase  titulo-servicios 
                                            d-flex align-items-center justify-content-center">
                                    <a class="titulo-entradaservicios" href="<?php the_permalink(); ?>"> <?php the_title(); ?></a>       
                                </h2>
                            </div>
                            <div class=" col-md-12 text-center">
                                    <div class="contenido-servicios col-md-12 pl-5 pr-5 
                                                d-flex align-items-center justify-content-center">
                                        <?php the_content();?>
                                    </div>   
                                    <div class="contenido-serviciosC p-5">
                                        <input class="btn btn-light btn-masinfo" type="submit" name="solicitar" value ="SOLICITAR"
                                        style="width:15%;">
                                    </div>                        
                            </div>
                        </div>
                    <?php endwhile; else :?>
                        <p>Disculpe no encontramos ninguna entrada que coincidiera con su criterio de búsqueda</p>  
                    <?php endif; ?> 
                </div>      
            </div>
        </div> 
</div>
<?php get_footer();?>