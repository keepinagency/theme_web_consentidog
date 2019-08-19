<?php
$texthome = get_option('textohome', 'LOS OJOS DE UN ANIMAL TIENEN EL PODER DE HABLAR UN GRAN LENGUAJE');
$autorcita = get_option('autorcita', 'MARTIN BUBER');
?>
<div class="contenedor-cita row container-fluid p-0 m-0">
    <div class="citahome col-md-12 pt-5"><?php echo $texthome;?>
        <div class="citaautor col-md-2"><?php echo $autorcita;?></div>
    </div>
</div>