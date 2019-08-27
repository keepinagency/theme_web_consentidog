<?php
/* Template Name: Busqueda */        
get_header(); 
?>   
<div class="row contenedor-general col-md-12 pt-5 m-0">                
    <?php if (have_posts()) :
        while (have_posts()) : the_post();?>
        <div class="row p-0 m-0" style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');
                    background-size:100%; background-repeat:no-repeat; height: 600px;">
            <div id="post-<?php //the_ID(); ?>" class="col-12 h-25 text-center m-0 p-0" >
                <a class="titulo-blog w-100 h-100 d-flex align-items-center
                            text-center" href="<?php the_permalink(); ?>" >      
                    <h4 class="enlace-blog text-uppercase text-center text-white w-100">
                        <?php the_title(); ?>
                    </h4>
                </a>
            </div>
            <div class="col-12 h-25 text-center m-0 p-0">
                <?php the_excerpt(); ?>
                <?php //echo "$s"; ?>
            </div>
            <div class="col-12 h-50 text-center m-0 p-0">
                <?php //the_post_thumbnail('medium'); ?>
                <?php //echo "$s"; ?>
            </div>
            <div class="row col-12 pt-5 m-0 h-75" >
                <?php endwhile; else :?>
                    <p>Disculpe no encontramos ningun reultado que coincidiera con su criterio de búsqueda.</p>                    
                <?php endif; ?>
            </div>
        </div>
</div>
<?php get_footer(); ?>