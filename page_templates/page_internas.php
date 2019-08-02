<?php
/*
Template Name: Internas
Template Type Post: Page
*/
get_header();
$ima = get_the_post_thumbnail();
?>
<div class="contentedor-general">
    <div class="imagen-pages">
        <div class="contenedor-pages">
            <div class="titulo-pages"><?php the_title(); ?></div>
                <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <div class="contenedor-contenido"><?php the_content();?></div>
                <!--div class="contenedor-imagen"><?php //the_post_thumbnail('medium');?></div-->
                <?php endwhile; else :?>
                    <p>Disculpe no encontramos ninguna entrada que coincidieran con su criterio de búsqueda.</p>
                <?php endif; ?>
        </div>
    </div>
</div>   
<?php get_footer(); ?>