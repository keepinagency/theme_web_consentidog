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
    'orderby'       => 'date',
    'paged'         => $paginasblog
));
?>
<div id="outer_slidehome" class="d-flex flex-column p-0 m-0 h-100">
    <div id="carruselHome" class="carousel slide p-0 m-0 w-100 h-100 d-block col-12" data-ride="carousel" style="z-index:800; ">
        <?php    
        $stickies = get_option( 'sticky_posts' );
        // Make sure we have stickies to avoid unexpected output
        if ( $stickies ) {
            $args = [
                'post_type'           => 'post',
                'post__in'            => $stickies,
                'posts_per_page'      => 3,
                'ignore_sticky_posts' => 1
            ];
            $the_query = new WP_Query($args);

            if ( $the_query->have_posts() ) { 
                ?>
                <div class="carousel-inner " >
                    <?php 
                    $i=1;
                    /*while($arregloblog->have_posts()) : 
                        $arregloblog->the_post();*/
                    while($the_query->have_posts()) : 
                        $the_query->the_post();
                    ?>

                        <div class="carousel-item <?php if ($i == 1) echo 'active'; ?> h-100"
                            style="background-image: url('<?php echo get_the_post_thumbnail_url(); ?>'); min-height: 70vh !important;"> 

                            <div class="outer-contenslide d-flex flex-row" style="min-height: 70vh !important;">

                                <div class="col-8 " >
                                    &nbsp;
                                </div>

                                <div class="titulo-blog col-4 d-flex flex-column align-items-center align-self-stretch justify-content-center">
                                    <div class="text-center">
                                        <a class="enlace-blog text-uppercase" href="<?php the_permalink(); ?>" >
                                            <h3><?php echo esc_html( get_the_title() ); ?></h3>
                                        </a>
                                    </div>
                                    <div class="pr-5 pl-5 text-white text-center"><?php the_excerpt(); ?></div>
                                </div>

                            </div>

                        </div>

                        <?php 
                    $i++; 
                    endwhile; 
                    wp_reset_postdata(); 
                    ?>
                </div>
                <?php
            } //fin [ if ( $the_query->have_posts() ) ]

        }else{
            ?>
            <div class="carousel-inner " >
                <div class="carousel-item active h-100"
                        style="min-height: 70vh !important;">
                    <div class="outer-contenslide col-12 bg-warning text-center d-flex align-items-center justify-content-center" 
                            style="min-height: 70vh !important;">
                        <h2>¡NO EXISTEN POST MARCADOS COMO FIJOS!</h2>
                        <br><br>
                        Categoría Blog
                    </div>
                </div>
            </div>
            <?php
        } //fin [ if ( $stickies ) ]

        $x=1;
        ?>
        <!--Indicadores de Slides-->
        <ol class="carousel-indicators" style="z-index:20000;">
            <?php 
            for ($x = 0; $x < $i-1 ; $x++) {
                ?>
                <li data-target="#carruselHome" data-slide-to="<?php echo $x ?>" class="<?php if ($x == 0) echo 'active'; ?>"></li>
                <?php
            }
            ?>
        </ol>
        
    </div>
</div>

<!--div class="carrusel-imagen" style="background-image:url('<?php //echo get_the_post_thumbnail_url(); ?>'); 
                                    min-height: 520px; background-position: bottom right;">
    &nbsp;
</div-->      
        
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
        <div class="cont_pag_numbers container-fluid text-center">
            <?php 
                echo paginate_links(array(
                'total' => $arregloblog->max_num_pages
            ));
            ?>
        </div>
    <?php endif;?>
</div>
<?php get_footer();?>