<?php
$username = "root"; //usuario do banco de dados
$password = "usbw"; //senha do usuario do banco de dados

try{
    $conn = new PDO('mysql:host=localhost;dbname=comparador' , $username, $password); //seleção do banco de dados "comparador"
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); //-> é uma atribuição
} catch(PDOException $e){
    echo 'ERROR: ' . $e->getMessage();
}

?>