<?php
$texthome = get_option('textohome', 'Los ojos de un animal tienen el poder de hablar un gran lenguaje');
$autorcita = get_option('autorcita', 'MARTIN BUBER');
?>
<div class="row contenedor-cita">
    <div class="citahome col-8"><?php echo $texthome;?></div> 
    <div class="citaautor col-4"><?php echo $autorcita;?></div>
</div>

