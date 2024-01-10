<?php

try{
    $host="localhost";
    $dbname="blog";
    $user="root";
    $pass="";

    $conn=new PDO("mysql:host=$host; dbname=$dbname", $user , $pass);



}catch(PDOException $e){
    echo $e->getMessage();

}
    
?>







