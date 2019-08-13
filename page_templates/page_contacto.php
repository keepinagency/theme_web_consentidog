<?php
/*
Template Name: Contactanos
Template Type Post: Page
*/
get_header();
$ima = get_the_post_thumbnail();
?>
<div class="row contenedor-general col-md-12 p-0 m-0" 
            style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');">
    <?php if (have_posts()) :?>
        <div class="row p-0 m-0">
            <div class="col-12 h-25 text-center m-0 p-0  ">
                <h2 class="text-uppercase text-dark h-100 titulo-educadog
                            d-flex align-items-center justify-content-center">
                            <?php the_title(); ?>
                <h2>
            </div>
            <div class="row col-12 pl-5 pr-5 pb-5 m-0 h-75" >
                <?php
                    while (have_posts()) : the_post();?>
                            
                    <div class="col-12 h-100">
                            <div class="m-2 h-75">
                                <div class="contenedor-contenido w-75 d-flex align-items-center justify-content-center" >
                                    <?php the_content();?>
                                </div>

                            </div>
                        </div>
                <?php endwhile; else :?>
                    <p>Disculpe no encontramos ninguna entrada que coincidieran con su criterio de búsqueda.</p>
                <?php endif; ?>
            </div>
        </div>
</div>   
<?php get_footer(); ?>



