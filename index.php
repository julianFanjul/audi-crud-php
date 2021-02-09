<!doctype html>

<?php

require_once("config/config.php");
require_once("config/arrays.php");
require_once("config/funciones.php");


$seccion = $_GET["seccion"] ?? "home";


?>

<html>

<head>
  <!-- Basic Page Needs
    ================================================== -->
  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Audi</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Favicons
    ================================================== -->
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

  <!-- Slider
    ================================================== -->
  <link href="css/owl.carousel.css" rel="stylesheet" media="screen">
  <link href="css/owl.theme.css" rel="stylesheet" media="screen">
  <link href="css/animate.css" rel="stylesheet" media="screen">

  <!-- Stylesheet
    ================================================== -->
  <link rel="shortcut icon" href="img/logoaudisvg.svg" />
  <link rel="stylesheet" type="text/css" href="style.css">
  <link href='https://fonts.googleapis.com/css?family=PT+Serif:400,400i,700|Montserrat:100,200,300,300i,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
  <!-- Navigation
    ==========================================-->
  <nav id="top-menu" class="navbar navbar-default navbar-fixed-top" id="nav">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
        <a class="navbar-brand" href="index.php"><img src="img/logoaudi.png" class="img-responsive"><span>audi</span></a>
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
            <a class="nav-link" href="index.php">
              Home
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?seccion=tipo&id=sedan">
              sedan
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?seccion=tipo&id=coupe">
              coupe
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?seccion=tipo&id=suv">
              suv
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?seccion=tipo&id=spyder">
              spyder
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?seccion=contacto">
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
    <!-- /.container-fluid -->
  </nav>

  <main>

    <?php

    if ($seccion == "home") :
      require("secciones/home.php");
    elseif ($seccion == "tipo") :
      require("secciones/tipo.php");
    elseif ($seccion == "contacto") :
      require("secciones/contacto.php");
    elseif ($seccion == "detalle") :
      require("secciones/detalle.php");
    else :
      require("secciones/404.php");
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
              <li><a href="panel/index.php">Administrar artículos</a></li>
              <li><a href="index.php?seccion=contacto">Contacto</a></li>
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

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/SmoothScroll.js"></script>
  <script type="text/javascript" src="js/jquery.isotope.js"></script>
  <script src="js/owl.carousel.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <!-- Custom Javascripts
    ================================================== -->
  <script type="text/javascript" src="js/main.js"></script>
  <script src="js/wow.min.js"></script>
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