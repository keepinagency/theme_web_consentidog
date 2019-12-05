<?php

    $uri = $_SERVER['REQUEST_URI']; // $uri == example.com/sub
    $exploded_uri = explode('/', $uri); //$exploded_uri == array('example.com','sub')
    $domain_name = $exploded_uri[1]; //$domain_name = 'example.com'

    $server = ( isset($_SERVER['HTTPS']) ? 'https' : 'http' ). "://" . $_SERVER['SERVER_NAME'];
    $port   = ( !empty($_SERVER['SERVER_PORT']) ? ':'.$_SERVER['SERVER_PORT'] : '' );
    $base_url = $server.$port.'/'.$domain_name.'/index.php?reservaenviada=1';
    //die();
    //$from = "web@consentidog.com";
    $from = $_POST['correo'];
    $to = "javerne@gmail.com";
    $subject = "ConsentiDog.com - Pre-Reserva";

    $ano_llegada = substr($_POST['modal-fecha-llegada'],0,4);
    $mes_llegada = substr($_POST['modal-fecha-llegada'],5,2);
    $dia_llegada = substr($_POST['modal-fecha-llegada'],8,2);
    $hora_llegada = substr($_POST['modal-fecha-llegada'],11,2);
    $mins_llegada = substr($_POST['modal-fecha-llegada'],14,2);
    $timefecllegada = mktime($hora_llegada, $mins_llegada, 0, $mes_llegada, $dia_llegada, $ano_llegada);  

    $ano_salida = substr($_POST['modal-fecha-retiro'],0,4);
    $mes_salida = substr($_POST['modal-fecha-retiro'],5,2);
    $dia_salida = substr($_POST['modal-fecha-retiro'],8,2);
    $hora_salida = substr($_POST['modal-fecha-retiro'],11,2);
    $mins_salida = substr($_POST['modal-fecha-retiro'],14,2);
    $timefecsalida = mktime($hora_salida, $mins_salida, 0, $mes_salida, $dia_salida, $ano_salida);

    setlocale(LC_ALL,"es_ES");
    $fec_llegada = ucwords(strftime("%A",$timefecllegada))." ".date("d/m/Y h:i a", $timefecllegada);
    $fec_salida = ucwords(strftime("%A",$timefecsalida))." ".date("d/m/Y h:i a", $timefecsalida);

    //die();
    $message =" <html>
                <head>
                    <title>ConsentiDog.com - Pre-reserva desde la Web</title>
                </head>
                <body>
                    Nueva pre-reserva desde www.consentidog.com:<br><br>

                    Cliente: <b>".$_POST['nombres']."</b><br>
                    Teléfono: <b>".$_POST['telefono']."</b><br>
                    Correo: <b>".$_POST['correo']."</b><br><br>

                    Mascota: <b>".$_POST['nom_mascota']." - es un(a) ".$_POST['raza']."</b><br><br>

                    Servicio requerido: <b>".$_POST['modal-servicio']."</b><br>
                    Fecha llegada: <b>".$fec_llegada."</b><br>
                    Fecha retiro:   <b>".$fec_salida."</b><br><br><br>

                    www.consentidog.com <br>
                    (by <a href='keepinagency.com'>keepinagency.com</a>)
                </body>
                </html>
            ";
    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .= "From:" . $from;
    mail($to,$subject,$message, $headers);
    //echo "The email message was sent.";
    header("Location: ".$base_url, true, 301);
    exit();
?>