<?php
/*
Template Name: Internas
Template Type Post: Page
*/
get_header();
?>
<div class="row contenedor-general-internas col-md-12 p-0 m-0" 
            style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');">
    <?php if (have_posts()) :?>
        <div class="row p-0 m-0 pt-4 pb-4">
            <div class="row col-12 p-0 m-0 pb-3">
                <div class="spacer col-1">
                        &nbsp;
                </div>
                <div class="area-tit-internas text-center col-10 pt-1">
                    <h2 class="text-uppercase text-secondary titulo-interna p-0 m-0
                            d-flex align-items-center justify-content-center">
                            <?php the_title(); ?>
                    <h2>
                </div>
                <div class="spacer col-1">
                        &nbsp;
                </div>
            </div>
            <div class="row col-12 p-0 m-0 mb-5 " >
            <?php
                while (have_posts()) : the_post();?>
                    <div class="spacer col-1">
                        &nbsp;
                    </div>
                    <div class="contenedor-contenido col-10 pt-4 pl-4 pr-4 m-0 w-100">
                            <?php the_content();?>
                    </div>
                    <div class="spacer col-1">
                        &nbsp;
                    </div>
                <?php 
                endwhile;
            ?>
            </div>
        </div>
    <?php else :?>
    <div class="row col-12 p-0 m-0">
        <p>Disculpe no encontramos ninguna entrada que coincidieran con sssu criterio de búsqueda.</p>
    </div>
    <?php endif; ?>
</div>

<?php get_footer(); ?>