<?php

function select($query){
    
    
    global $cnx;

   
    $respuesta = mysqli_query($cnx, $query);

   
    if(mysqli_error($cnx)){
        return mysqli_error($cnx);
    }

   
    $resultados = []; 

    
    while($resultado = mysqli_fetch_assoc($respuesta)){
        $resultados[] = $resultado;
       
    }

    
    return $resultados;
}


function redirigir($url){
    header("Location: $url");
    die();
}


function crear($tabla, $datos_de_post){
    
    global $cnx;

      

    $query_insertar = "INSERT INTO $tabla SET";

    foreach($datos_de_post as $nombre_columna => $dato_a_insertar){
        
        if(empty($dato_a_insertar)){

            $query_insertar .= " $nombre_columna = NULL,";

        }else{

            $query_insertar .= " $nombre_columna = '$dato_a_insertar',";
        }

    }

    
    $query_insertar = substr($query_insertar,0,-1);

    
    $respuesta = mysqli_query($cnx, $query_insertar);

   
    if(mysqli_error($cnx)){
        die(mysqli_error($cnx));
    }
    
    
    return $respuesta;
}