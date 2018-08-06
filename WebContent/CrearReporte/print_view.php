<?php
    require __DIR__.'/vendor/autoload.php';
    
    use Spipu\Html2Pdf\Html2Pdf;
    
    //recoger el contenido de la plantilla html
    
    
    
    
    ob_start();
    require_once 'rfoBestel.php';
    $html=ob_get_clean();
    
    $html2pdf = new Html2Pdf('P', 'A4', 'es', 'true', 'UTF-8');
   
    /*Escribir html*/
    $html2pdf->writeHTML($html);
    
    /*Salida con nombre de archivo*/
    $html2pdf->output('RFO.pdf');
    
    
    
?>