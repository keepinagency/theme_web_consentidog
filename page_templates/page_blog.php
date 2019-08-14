<?php
/*
Template Name: Blog
Template Post Type: page 
*/
get_header();
$ima = get_the_post_thumbnail();
$paginasblog = get_query_var('paged');
$arregloblog = new WP_Query(array(
    'post_type'     => 'post',
    'category_name' => 'blog',
    'posts_per_page'=> 3,
    'paged'         => $paginasblog
));
?>
<div class="imagen-blog"><?php echo $ima; ?></div>
        
        
<?php
if ($arregloblog->have_posts()) :?>
    <div class="contenedor-blog">
        <div class="custom-tituloblog"><?php echo get_post_meta($post->ID, 'titulo', true);?></div>
        <div class="listas-blog">
            <?php while ($arregloblog->have_posts()) :
                $arregloblog->the_post();?>
                <div class="link-entradablog">
                    <a class="titulo-entradablog" href="<?php the_permalink(); ?>"> <?php the_title(); ?>
                        <div class="miniatura-blog"> <?php the_post_thumbnail('medium'); ?>&nbsp;</div>
                    </a>
                    <div class="extracto-blog"><?php the_excerpt();?></div>
                </div>
            <?php endwhile;?>
        </div>
        <div class="cont-pag-number">
            <?php echo paginate_links(array(
                'total' => $arregloblog->max_num_pages )); 
            ?>
        </div>
    </div>
<?php endif; ?>

<?php get_footer();?>