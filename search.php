<?php
/* The template for displaying Search Results pages. */        
get_header(); 
$s=get_search_query();
$paginasblog = get_query_var('paged');
$args = array(
    's'   =>$s,
    'post_type'     => 'post',
    'category_name' => 'blog,servicios,educa',
    'posts_per_page'=> 3,
    'orderby'       => 'date',
    'paged'         => $paginasblog
);
$the_query = new WP_Query( $args );
?>   
<div class="row contenedor-general-buqueda col-md-12 pt-5 m-0">                
    <?php 
    if ($the_query->have_posts()) :
        /* esto se usa para que trabaje multi idioma _e 
        _e("<h2 style='font-weight:bold;color:#000'>Resultados de la Busqueda: ".get_query_var('s')."</h2> <br />");*/
        ?>
        <div class="d-flex flex-row justify-content-center col-12 p-0 m-0 pt-0">
            <h2 style='font-weight:bold;color:#000'>Resultados de la Busqueda: <?php echo get_query_var('s');?></h2><br />
        </div>
        <?php
        while ($the_query->have_posts()) : $the_query->the_post();
        ?>
            <div class="link_blog col-md-4" >  
                <div class="miniatura_blog d-flex align-items-end  p-0 m-0"
                        style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                            height:400px;
                            background-size: cover;"> 
                            <a class="titulo-blog w-100 h-50 
                                        d-flex align-items-center text-center" href="<?php the_permalink(); ?>" >      
                                <h4 class="enlace-blog text-uppercase text-center text-white w-100">
                                    <?php the_title(); ?>
                                </h4>
                            </a>
                </div> 
                <div class="contenidoInter-blog pr-5 pl-5"><?php the_excerpt(); ?></div>
            </div>
        <?php 
        endwhile;
        ?>
        <div class="d-flex flex-row justify-content-center col-12 p-0 m-0 pt-5">
            <div class="nav-previous alignleft">
                <?php previous_posts_link( 'Anteriores' ); ?>
            </div>
            <div class="nav-next alignright">
                <?php next_posts_link( 'Siguientes' ); ?>
            </div>
        </div> 
        <?php
    else :?>
            <div class="d-flex flex-row justify-content-center col-12 p-0 m-0 ">
                <p class="alert alert-warning mt-1">
                    Disculpe no encontramos ningun resultado que concida con su criterio de búsqueda.
                </p>
            </div>
        <?php 
    endif; ?> 
</div>

<?php get_footer(); ?>