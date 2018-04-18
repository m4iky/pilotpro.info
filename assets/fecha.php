<?php
header('Access-Control-Allow-Origin: *');
setlocale(LC_TIME,"es_DO.UTF-8");
$hoy =  date("j/m/Y, h:i a");
echo $hoy;
?>
