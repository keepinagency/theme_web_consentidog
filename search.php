<?php
/* The template for displaying Search Results pages. */        
get_header(); 
$s=get_search_query();
$args = array(
's'   =>$s
);
$the_query = new WP_Query( $args );
?>   
<div class="row contenedor-general-buqueda col-md-12 pt-5 m-0">                
    <?php if ($the_query->have_posts()) :
        _e("<h2 style='font-weight:bold;color:#000'>Resultados de la Busqueda: ".get_query_var('s')."</h2>");
        while ($the_query->have_posts()) : $the_query->the_post();?>
        <div class="row pt-5 m-0">
            <div class="m-0 p-0" >
                <a class="titulo-busq d-flex align-items-center
                            text-center" href="<?php the_permalink(); ?>" >      
                    <h4 class="text-uppercase text-center text-white">
                        <?php the_title(); ?>
                        <?php //echo "$s"; ?>
                    </h4>
                </a>
                <div class="w-25 text-center m-0 p-0">
                    <?php the_excerpt(); ?>
                </div>
                <div class="w-25 text-center m-0 p-0">
                    <?php the_post_thumbnail('medium'); ?>
                </div>
            </div>

            <div class="row col-12 pt-5 m-0 h-100" >
                <div class="d-flex align-items-center text-center">
                    <?php endwhile; else :?>
                        <p class="alert alert-info">
                            Disculpe no encontramos ningun reultado que coincidiera con su criterio de búsqueda.
                        </p>                    
                    <?php endif; ?>
                </div>
            </div>
        </div>
</div>

<?php get_footer(); ?>