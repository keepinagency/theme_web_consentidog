<?php

//$loggeo = array("username" => "keepin", "password" => "123456"); 
$loggeo = array("username" => "administrator", "password" => "123456");                                                                  
$loggeo_string = json_encode($loggeo);  

$ch = curl_init();

//curl_setopt($ch, CURLOPT_URL, "http://dev.keepinagency.com/consentidog_backend/api/users/token");
curl_setopt($ch, CURLOPT_URL, "http://uat.consentidog.com/backend/v0.1.0/api/users/token");
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST"); 
curl_setopt($ch, CURLOPT_POSTFIELDS, $loggeo_string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
    'Content-Type: application/json',
    'Accept: application/json',                                                                                
    'Content-Length: ' . strlen($loggeo_string))                                                                       
);

$res = curl_exec($ch);
$valores= json_decode($res,true);
/*var_dump($res);*/
if (empty($valores['success'])){
    ?>
    <div class="form-group text-center p-0 m-0 h-0 w-100 pt-3">
        <label for="servicios-sel" class="col-12 col-form-label text-center p-0 m-0 ">Servicio a Realizar</label>
        <select class="form-control p-0 m-0" id="servicios-sel">
            <option>---</option>
        </select>
        <input type="hidden" id="error_rest" 
            value="<?php echo "Message:".$valores['data']['message']." - url: ".$valores['data']['url']." - code:".$valores['data']['code'];?>">
    </div>
    <?php
}else{

    $token = $valores['data']['token'];

    //curl_setopt($ch, CURLOPT_URL, "http://dev.keepinagency.com/consentidog_backend/api/services");
    curl_setopt($ch, CURLOPT_URL, "http://uat.consentidog.com/backend/v0.1.0/api/services");
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET"); 
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
        'Content-Type: application/json',
        'Accept: application/json',                                                                                
        'Authorization: Bearer ' . $token )                                                                       
    );
    $res = curl_exec($ch);
    $valores= json_decode($res,true);
    /*var_dump($res);
    print_r($valores);*/

    ?>

    <div class="form-group text-center p-0 m-0 h-0 w-100 pt-3">
        <label for="servicios-sel" class="col-12 col-form-label text-center p-0 m-0 ">Servicio a Realizar</label>
        <select class="form-control p-0 m-0" id="servicios-sel">
        <?php
        $totreg = count($valores['data']);
        for($i=0;$i<$totreg;$i++){
            echo "<option>".$valores['data'][$i]['name']."</option>";
        }
        ?>
        </select>
    </div>
<?php 
}
//echo $nombre = $valores['data']['name'];

curl_close($ch);

?>