<?php
/*
Template Name: Obediencia
Template Post Type: Page
*/
get_header();
$posts_slide = new WP_Query(array (
    'post_type'     => 'post',
    'category_name' => 'educa',
    'order'         => 'ASC',

    ));
$i = 0;
$e = 0;
?>
<div class="fondo-slider" style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>'); 
        background-repeat:no-repeat; background-size:cover;">
    <div class="container-slider">
        <div class="col-md-12 p-0 m-0">
            <div id="carousel-1" class="carousel slide" data-ride="carousel">
                <!-- Indicadores -->
                <!--ol class="carousel-indicators">
                    <?php while($posts_slide->have_posts()) : $posts_slide->the_post();?>
                    <li data-target="#carousel-1" data-slide-to="<?php echo $e; ?>" 
                        <?php if($e == 0) : ?> class="active"<?php endif;?>>
                    </li>
                        <?php $e++; endwhile; ?>
                </ol>
                -->
                <!-- Contenedor de los Slider -->
                <div class="carousel-inner" role="listbox">
                    <?php while($posts_slide->have_posts()) : $posts_slide->the_post();?>
                        <div class="carousel-item slider
                            <?php if($i == 0) echo 'active';?> ">
                            <img class="imaslider w-100 " src="<?php the_post_thumbnail_url();?>">
                            <div class="carousel-caption contenido-slider visible-lg">
                                <h3><?php the_title(); ?></h3>
                                <p><?php the_content(); ?></p>
                            </div>
                        </div>
                    <?php $i++; endwhile; wp_reset_postdata();?>
                </div>

                <!-- Controles -->
                <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>