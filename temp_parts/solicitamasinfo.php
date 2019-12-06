<?php

    $uri = $_SERVER['REQUEST_URI']; // $uri == example.com/sub
    $exploded_uri = explode('/', $uri); //$exploded_uri == array('example.com','sub')
    $domain_name = $exploded_uri[1]; //$domain_name = 'example.com'

    $server = ( isset($_SERVER['HTTPS']) ? 'https' : 'http' ). "://" . $_SERVER['SERVER_NAME'];
    $port   = ( !empty($_SERVER['SERVER_PORT']) ? ':'.$_SERVER['SERVER_PORT'] : '' );
    $base_url = $server.$port.'/'.$domain_name.'/index.php?solicitudmasinfo=1';
    //die();
    //$from = "web@consentidog.com";
    $from = $_POST['correo'];
    $to = "javerne@gmail.com";
    $subject = "ConsentiDog.com - Solicitud de mas informacion";

    

    //die();
    $message =" <html>
                <head>
                    <title>ConsentiDog.com - Solicitud de mas información desde la Web</title>
                </head>
                <body>
                    Nueva solicitud de más información desde www.consentidog.com:<br><br>

                    
                    Correo: <b>".$_POST['correo']."</b><br><br><br><br>

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