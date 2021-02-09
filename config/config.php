<?php


error_reporting(E_ALL);
ini_set("display_errors", 1);


$nombre = "Audi";


define("NOMBRE_SITIO", "ACERCA DE");



define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", "");
define("DB_NAME", "audi");



$cnx = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if (!$cnx) {
    die("Estamos con problemas técnicos, disculpen las molestias.");
}


mysqli_set_charset($cnx, "UTF8");
