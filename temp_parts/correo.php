<?php
    $from = $_POST['email'];
    $to = "kevin.rojas@keepinagency.com";
    $subject = "Cliente solicitando información desde www.consentidog.com";
    $message = "Este mensaje fue enviado por " . $from . ",\r\n" ;
    $message .= "Me gustaria recibir la Información";
    $headers = "From:" . $from;
    mail($to,$subject,$message,$headers); 
    echo '<script language="javascript">alert("Correo enviado con exito");window.location.href="index.html"</script>';
?>