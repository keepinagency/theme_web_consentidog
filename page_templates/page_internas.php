<?php
/*
Template Name: Internas
Template Type Post: Page
*/
get_header();
?>
<div class="row contenedor-general-internas col-md-12 p-0 m-0" >
    <?php if (have_posts()) :?>
        <div class="header-post container-fluid p-0 m-0"
            style="background-image: url('<?php echo get_the_post_thumbnail_url(); ?>'); min-height: 70vh !important;
                    background-repeat:no-repeat; background-size:cover; background-position:center;"> 
            &nbsp;
        </div>
        <div class="row p-0 m-0 pt-2 ">
            <div class="row col-12 p-0 m-0 pb-2">

                <div class="area-tit-internas text-center col-12 pt-1">
                    <h2 class="text-uppercase text-secondary titulo-interna p-0 m-0
                            d-flex align-items-center justify-content-center">
                            <?php the_title(); ?>
                    <h2>
                </div>
            </div>
            <div class="row col-12 p-0 m-0 mb-1 " >
            <?php
                while (have_posts()) : the_post();?>
                    <div class="contenedor-contenido col-12 pt-4 pl-4 pr-4 m-0 w-100">
                            <?php the_content();?>
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