<?php
/*
Template Name: Blog
Template Post Type: page 
*/
get_header();
$paginasblog = get_query_var('paged');
$arregloblog = new WP_Query(array(
    'post_type'     => 'post',
    'category_name' => 'blog',
    'posts_per_page'=> 3,
    'paged'         => $paginasblog
));
?>
<div class="" style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');
        background-size:100%; background-repeat:no-repeat; height: 520px;">
</div>      
        
<div class="row contenedor-blogHome p-0 m-0">
    <?php if ($arregloblog->have_posts()) :?>
        <div class="listas_blogHome col-md-12">
            <div id="consentinotas"
                        class="custom-tituloblog text-uppercase h-25 
                        d-flex align-items-center 
                        justify-content-center"><?php echo get_post_meta($post->ID, 'titulo', true); ?>
            </div>
            <?php
            while ($arregloblog->have_posts()) :
                $arregloblog->the_post();?>
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
            <?php endwhile;?>
		</div>
            <div class="cont_pag_numbers" >
                <?php 
                    echo paginate_links(array(
                    'total' => $arregloblog->max_num_pages
                ));
                ?>
            </div>
    <?php endif;?>
</div>
<?php get_footer();?>