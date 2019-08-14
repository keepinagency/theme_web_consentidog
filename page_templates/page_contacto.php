<?php
/*
Template Name: Contactanos
Template Type Post: Page
*/
get_header();
?>
<div class="row col-md-12 m-0 p-0 contentedor-general" 
        style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>'); 
        background-repeat:no-repeat; background-size:cover;">
        <?php if (have_posts()) :?>
        
        <div class="contenedor-pages col-md-12 h-25 justify-content-start m-0 p-0">
            <div class="titulo-pagesform text-uppercase text-dark titulo-contactanos
                        d-flex align-items-center justify-content-center">
                        <?php the_title(); ?>
            </div>
            <div class="row col-12 pl-5 pr-5 pb-5 m-0 h-75" >
                <?php while (have_posts()) : the_post();?>
                <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center">
                    <div class="m-0 h-100 w-100">
                        <div class="contenedor-contenidoform">
                            <?php the_content();?>
                        </div> 
                    </div>
                </div>
            </div>
                <!--div class="contenedor-imagen"><?php //the_post_thumbnail('medium');?></div-->
                <?php endwhile; else :?>
                    <p>Disculpe no encontramos ninguna entrada que coincidieran con su criterio de búsqueda.</p>
                <?php endif; ?>
        </div>
</div>   
<?php get_footer(); ?>