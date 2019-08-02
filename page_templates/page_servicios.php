<?php 
/*
Template Name: Servicios
Template Post Type: Page
*/
get_header();
//$ima = get_the_post_thumbnail();
$arregloservicios = new WP_Query(array(
    'post_type'     => 'post',
    'category_name' => 'servicios',
    'orderby'       => 'slug',
    'order'         => 'ASC',
));
?>     
<?php
if ($arregloservicios->have_posts()) :?>
    <div class="contenedor-servicios">
        <div class="custom-titulo"><?php echo get_post_meta($post->ID, 'titulo', true);?></div>
        <!--div class="listas-servicios"-->
            <?php while ($arregloservicios->have_posts()) :
                $arregloservicios->the_post();?>
                <div class="link-entradaservicios">
                    <a class="titulo-entradaservicios" href="<?php the_permalink(); ?>"> <?php the_title(); ?>
                        <div class="miniatura-servicios"> <?php //the_post_thumbnail('medium'); ?>&nbsp;</div>
                    </a>
                    <div class="contenido-servicios"><?php the_content();?>
                        <input class="btnservicios" type="submit" name="solicitar" value ="SOLICITAR">
                    </div>
                    
                </div>
            <?php endwhile;?>
        <!--/div-->
    </div>
<?php endif; ?>

<?php get_footer();?>