<?php
/*
Template Name: Obediencia
Template Post Type: Page
*/
get_header();
$posts_slide = new WP_Query(array (
    'post_type'     => 'post',
    'category_name' => 'educa',
));
$i = 0;
$e = 0;
?>

<div class="contenedor-educa-slide">
    <div class="col-md-12">
        <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <!-- INDICADORES -->
            <ol class="carousel-indicators">
                    <?php while($posts_slide->have_posts()) : $posts_slide->the_post();?>
                    <li data-target="#carousel-1" data-slide-to="<?php echo $e; ?>" <?php if ( $e == 0 ) : ?> class="active"<?php endif; ?>>
                    </li>
                        <?php $e++; endwhile; wp_reset_postdata(); ?>
                </ol>
            <!-- CONTENEDOR DE LOS SLIDER -->
            <div class="carousel-inner" role="listbox">
                <?php while($posts_slide->have_posts()) : $posts_slide->the_post();?>
                    <div class="item <?php if ( $i == 0 ) echo 'active';?>">
                        <img class="imaslider" src="<?php the_post_thumbnail();?>">
                        <div class="carousel-caption visible-lg">
                            <h3><?php the_title(); ?></h3>
                            <p><?php the_content(); ?></p>
                        </div>
                    </div>
                <?php $i++; endwhile; wp_reset_postdata();?>
            </div>
            <!--CONTROLES-->
            <a  class="left carousel-control" href="#carousel-1" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a  class="right carousel-control" href="#carousel-1" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Siguiente</span>
            </a>
        </div>
    </div>
</div>

<?php get_footer(); ?>