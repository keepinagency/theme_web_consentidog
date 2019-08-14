<?php
/*
Template Name: Internas
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
                <h2 class="text-uppercase text-white h-100 titulo-educadog
                            d-flex align-items-center justify-content-center">
                            <?php the_title(); ?>
                <h2>
            </div>
            <div class="row col-12 pl-5 pr-5 pb-5 m-0 h-75" >
                <?php
                    while (have_posts()) : the_post();?>
                            
                    <div class="col-12 p-10 h-100 text-center">
                            <div class="m-2 h-75 d-flex align-items-center justify-content-center">
                                <div class="contenedor-contenido d-flex align-items-center justify-content-center" >
                                    <?php the_content();?>
                                </div>

                            </div>
                        </div>
                <?php endwhile; else :?>
                    <p>Disculpe no encontramos ninguna entrada que coincidieran con su criterio de búsqueda.</p>
                <?php endif; ?>
                <?php //endwhile;?>
            </div>
        </div>
        <?php //endif;?>
</div>

<?php get_footer(); ?>