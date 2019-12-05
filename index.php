<?php 
	$reservaenviada = $_GET['reservaenviada'];
	get_header();
		
		if (empty($reservaenviada)){
			require_once(Consentidog_TEMP_PARTS . '/home.php');
		}else{
			//echo "Su reserva ha sido registrada con éxito, se le estará contactando a la brevedad posible. <br><br>";
			//echo "Gracias por elegirnos!";
			require_once(Consentidog_TEMP_PARTS . '/mensaje_reserva.php');
		}
		require_once(Consentidog_TEMP_PARTS . '/home_educa.php');
		require_once(Consentidog_TEMP_PARTS . '/home_texto.php');
		require_once(Consentidog_TEMP_PARTS . '/home_servicios.php');
		/*require_once(Consentidog_TEMP_PARTS . '/home_blog.php');*/
	get_footer();
?>