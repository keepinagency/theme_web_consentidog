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
<div class="row contenedor-total col-md-12 p-0 m-0">
    <?php
    if ($arregloservicios->have_posts()) :?>
        <div class="row p-0 m-0 h-100">
            <div class="row col-12 pl-5 pr-5 pb-5 m-0 h-50">
                <?php 
                    while ($arregloservicios->have_posts()) : $arregloservicios->the_post();?>
                    <div class="col-md-12 m-0 p-0" 
                        style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');
                        background-repeat:no-repeat; background-size:cover;">
                        <div class="col-md-12 m-0 p-0">
                            <h2 class="text-uppercase text-white titulo-servicios
                                        d-flex align-items-center justify-content-center">
                                <a class="titulo-entradaservicios" href="<?php the_permalink(); ?>"> <?php the_title(); ?></a>       
                            </h2>
                        </div>
                        <div class="col-12 p-0 h-50  text-center">
                                <div class="contenedor-servicios d-flex align-items-center justify-content-center">
                                    <?php the_excerpt();?>
                                </div>   
                                <div class="contenido-serviciosC">
                                    <input class="btnservicios" type="submit" name="solicitar" value ="SOLICITAR">
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