<?php 
/*** Esta es la plantilla para el home ***/    
$nuevo_arreglo = new WP_Query(array(
	'post_type'=>'post', 
    'category_name' => 'servicios',
    'order'=>'ASC',
	'posts_per_page'=>4
));
?>

<div class="contenedor-servicioshome">
    <?php if ($nuevo_arreglo->have_posts()) :?>
        <div class="listas_servicios">
            <?php
            $i=0;
            $claserev ="";
            while ($nuevo_arreglo->have_posts()) :
                $nuevo_arreglo->the_post();?>
                    <a href="<?php the_permalink();?>">
                        <?php
                        if ($i>=2){
                            $claserev = "d-flex flex-column-reverse"; 
                        }
                        ?>
                        <div class="link_servicios <?= $claserev;?>" >
                            <div id="titserv_<?= $i;?>" class="titulo_servicios text-uppercase text-left"
                                onMouseOver="this.style.backgroundColor='#FE330A';
                                             this.style.color='white';
                                             document.getElementById('imgserv_<?= $i;?>').style.backgroundColor='#FE330A';
                                             document.getElementById('imgserv_<?= $i;?>').style.backgroundBlendMode='multiply';"
                                onMouseOut="this.style.backgroundColor='white';
                                             this.style.color='#FE330A';
                                             document.getElementById('imgserv_<?= $i;?>').style.backgroundColor=''"> 
                                <?php the_title();?>
                            </div>
                            <div id="imgserv_<?= $i;?>" class="miniatura_servicios"
                                style="background-image: url('<?php echo the_post_thumbnail_url('');?>'); 
                                        height:350px;
                                        background-size: cover;"
                                onMouseOver="this.style.backgroundColor='#FE330A';
                                             this.style.backgroundBlendMode='multiply';
                                             document.getElementById('titserv_<?= $i;?>').style.backgroundColor='#FE330A';
                                             document.getElementById('titserv_<?= $i;?>').style.color='white';"
                                onMouseOut="this.style.backgroundColor='';
                                             document.getElementById('titserv_<?= $i;?>').style.backgroundColor='white';
                                             document.getElementById('titserv_<?= $i;?>').style.color='#FE330A';"> &nbsp;
                            </div>
                        </div>
                    </a>  
                <?php
                $i++; 
            endwhile;?>
		</div>
    <?php endif;?>
</div>