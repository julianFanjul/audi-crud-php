<!doctype html>

<?php

require_once("../config/config.php");
require_once("../config/arrays.php");
require_once("../config/funciones.php");


$seccion = $_GET["seccion"] ?? "listado_audi";


?>

<html>

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Audi</title>

    <meta name="description" content="">

    <meta name="author" content="">

    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css">

    <link href="../css/owl.carousel.css" rel="stylesheet" media="screen">

    <link href="../css/owl.theme.css" rel="stylesheet" media="screen">

    <link href="../css/animate.css" rel="stylesheet" media="screen">

    <link rel="shortcut icon" href="../img/logoaudisvg.svg" />

    <link rel="stylesheet" type="text/css" href="../style.css">

    <link href='https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700|Montserrat:100,200,300,300i,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

    <style>
        .foto {
            max-width: 70px;
        }

        .foto img {
            max-width: 100%;
        }


        .btn {
            margin-bottom: 1em;
        }

        section {
            margin-top: 4em;

        }

        header {
            background: #343a40;
        }
    </style>


</head>

<body>

    <header class="fixed-top">
        <nav id="top-menu" class="navbar navbar-default fixed-top" id="nav">
            <div class="container">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="../index.php?seccion=home"><img src="../img/logoaudi.png" class="img-responsive"><span>audi</span></a>
                </div>


                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <!--nav icon-->
                    <a id="nav-icon"> <span></span> <span></span> <span></span> </a>
                    <!--nav icon end-->

                    <ul id="nav-top" class="nav navbar-nav navbar-right">

                        <?php

                        ?>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php?seccion=tipo&id=sedan">
                                sedan
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php?seccion=tipo&id=coupe">
                                coupe
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php?seccion=tipo&id=suv">
                                suv
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php?seccion=tipo&id=spyder">
                                spyder
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php?seccion=contacto">
                                Contacto
                            </a>
                        </li>
                        <?php
                        //                        }
                        ?>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

            </div>

        </nav>
    </header>

    <main>

        <?php

        if ($seccion == "listado_audi") :
            require("secciones/listado_audi.php");

        elseif ($seccion == "crear_audi") :
            require("secciones/crear_audi.php");
        else :
            require("../secciones/404.php");
        endif;

        ?>
    </main>

    <footer id="bottom-footer">
        <div class="container">
            <div class="row wow fadeInUp">

                <!--bottom nav-->
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <nav class="bottom-nav">
                        <ul>
                            <li><a href="../index.php?seccion=home">Volver a inicio</a></li>
                            <li><a href="../index.php?seccion=contacto">Contacto</a></li>
                        </ul>
                    </nav>
                </div>
                <!--/bottom nav-->

                <!--Social Links-->
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <ul class="social-link">
                        <li><a href="https://twitter.com/audiarg"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="https://es-la.facebook.com/AudiArg/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.instagram.com/audiarg/?hl=es-la"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
                <!--/Social Links-->

            </div>
        </div>
    </footer>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/SmoothScroll.js"></script>
    <script type="text/javascript" src="../js/jquery.isotope.js"></script>
    <script src="../js/owl.carousel.js"></script>
    <script src="../js/jquery.waypoints.min.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
    <script src="../js/wow.min.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        });
    </script>
    <script>
        new WOW().init();
    </script>
</body>

</html>