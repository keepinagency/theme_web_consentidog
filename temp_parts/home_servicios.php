<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'servicios',
    'order'=>'ASC',
	'posts_per_page'=>10
));
?>

<div id="servicios" class="row container-fluid contenedor-servicioshome p-0 m-0">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_servicios p-0 m-0 ">
            <?php
            $i=0;
            $claserev ="";
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();
                if ($i%2==0){
                    $claserev = ""; 
                    $clastits = "justify-content-start";
                    $clasexce = "justify-content-start";
                }else{
                    $claserev = "d-flex flex-row-reverse";
                    $clastits = "justify-content-end";
                    $clasexce = "justify-content-end text-right";
                }
                ?>
                <a href="<?php the_permalink();?>" class="">
                    <div class="link_servicios col p-0 m-0  ">
                        
                        <div id="imgserv_<?= $i;?>" class="miniatura_servicios row <?= $claserev;?> p-0 m-0"
                            style="background-image: url('<?php echo the_post_thumbnail_url('');?>');"> 

                            <div class="col-12 col-lg-4 h-100 p-5 d-none contenidoInter-blog
                                        d-flex flex-column align-items-end <?= $clasexce;?> ">
                                
                                <div class="d-flex align-items-end 
                                            h-100  w-100 <?= $clastits;?>">
                                    <h3 class="titulo_servicios pl-2 pr-2 pt-1"><?php the_title();?></h3>
                                </div>
                                    <?php the_excerpt();?> 
                            </div>
                            <div class="col-12 col-lg-8 d-none d-lg-block">
                                &nbsp;
                            </div>
                            

                            
                        </div>

                    </div>
                </a>  
                <?php
                $i++; 
            endwhile;?>
		</div>
    <?php endif;?>
</div>