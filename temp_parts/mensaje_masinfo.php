<?php
$textomasinfo = get_option('textomasinfo', 'Correo recibido, se le estará contactando a la brevedad posible.');
$textogracias = get_option('graciasmasinfo', '¡Gracias por elegirnos!');
?>
<div class="contenedor-cita row container-fluid p-0 m-0 d-flex flex-column">
    <div class="imggracias " style="background-image:url('<?php echo get_template_directory_uri(); ?>/img/gracias.jpg'); 
            background-repeat:no-repeat; background-size:cover; background-position:center;">
        &nbsp;
    </div>
    <div class="col pt-lg-4 wow fadeInLeftBig text-center"
        data-wow-offset="10" data-wow-delay="0s" data-wow-iteration="1" data-wow-duration="2s">
        
        <h3 class="pt-3"><?php echo $textomasinfo;?></h3>
        
        <div class="citaautor col wow flipInX text-center pt-2 pb-2 pb-lg-5"
            data-wow-offset="10" data-wow-delay="2s" data-wow-iteration="1" data-wow-duration="1s">
            <?php echo $textogracias;?>
        </div>

    </div>
</div>