<?php

require_once("../../config/config.php");
require_once("../../config/funciones.php");


if (empty($_FILES["foto"])) {
    redirigir("../../panel/index.php?seccion=crear_audi");
}


if (($_FILES["foto"]["type"] != "image/png") && ($_FILES["foto"]["type"] != "image/jpeg")) {
    redirigir("../../panel/index.php?seccion=crear_audi");
}


if ($_FILES["foto"]["type"] == "image/png") {
    $extension = ".png";
} else {
    $extension = ".jpg";
}



$nombre = time() . $extension;


move_uploaded_file($_FILES["foto"]["tmp_name"], "../../img/$nombre");

$datos = $_POST;
$datos["foto"] = "img/$nombre";


if (!crear("autos", $datos)) {
    redirigir("../../panel/index.php?seccion=crear_audi");
}



redirigir("../../panel/index.php?seccion=listado_audi");
