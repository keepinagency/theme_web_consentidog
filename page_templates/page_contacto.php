<?php
/*
Template Name: Contactanos
Template Type Post: Page
*/
get_header();
?>
<div class="row contenedor-general-internas col-md-12 p-0 m-0" 
            style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');">
            
    <!--div class="contenedor-pages col-md-12 h-25 justify-content-start m-0 p-0"-->
    <div class="col-12 p-0 m-0 pt-4 pb-4">

        <div class="row col-12 p-0 m-0 pb-3">
            <div class="spacer col-1">
                    &nbsp;
            </div>
            <div class="area-tit-internas text-center col-10 pt-1">
                <h2 class="text-uppercase text-secondary titulo-interna p-0 m-0
                        d-flex align-items-center justify-content-center">
                        <?php the_title(); ?>
                <h2>
            </div>
            <div class="spacer col-1">
                    &nbsp;
            </div>
        </div>

        <div class="row col-12 pl-5 pr-5 pb-5 m-0 h-75" >
            &nbsp;
        </div>
        
    </div>
</div>   
<?php get_footer(); ?>