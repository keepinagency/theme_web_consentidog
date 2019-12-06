<?php 
	$reservaenviada = $_GET['reservaenviada'];
	$solicitudmasinfo = $_GET['solicitudmasinfo'];
	get_header();
		
		if (empty($reservaenviada) && empty($solicitudmasinfo)){
			require_once(Consentidog_TEMP_PARTS . '/home.php');
		}else{
			if (!empty($reservaenviada)){
				require_once(Consentidog_TEMP_PARTS . '/mensaje_reserva.php');
			}else{
				require_once(Consentidog_TEMP_PARTS . '/mensaje_masinfo.php');
			}
		}
		require_once(Consentidog_TEMP_PARTS . '/home_educa.php');
		require_once(Consentidog_TEMP_PARTS . '/home_texto.php');
		require_once(Consentidog_TEMP_PARTS . '/home_servicios.php');
		/*require_once(Consentidog_TEMP_PARTS . '/home_blog.php');*/

	get_footer();
?>