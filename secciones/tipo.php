<?php

$tipoEnUrl = $_GET["id"];




$query_tiposDeAutos = "SELECT * FROM autos WHERE tipo = '$tipoEnUrl'";


$query_paraFotos = "SELECT fototipoauto FROM tipos WHERE tipo = '$tipoEnUrl'";

$Tipos = select($query_tiposDeAutos);

$paraFotos = select($query_paraFotos);

$paraFotos = $paraFotos[0];

?>

<section id="home-banner" style="background-image: url(<?= $paraFotos["fototipoauto"] ?> );">
    <div class="content">
        <div class="container" data-wow-duration="1s"> <span class="wow fadeIn">descubri</span>
            <h1 class="wow fadeInUp">
                <?= $tipoEnUrl ?></h1>
        </div>
    </div>
    <div class="arrow bounce"> <i class="fa fa-arrow-down fa-2x"></i> </div>
</section>
<section id="latest-news-block">
    <div class="container">
        <div class="row">
            <!--section-title-->
            <div class="section-title text-center wow fadeInUp">
                <h2><?= $tipoEnUrl ?></h2>
            </div>
            <!--/section-title-->
            <?php
            if (!empty($Tipos)) :
                foreach ($Tipos as $tipo) :
            ?>
                    <!--home article-->
                    <article class="col-md-3 col-sm-6 col-xs-12">
                        <header class="entry-header"> <img src="<?= $tipo["foto"] ?> " alt="image 1">
                            <h3><?= $tipo["modelo"] ?></h3>
                            <a href="index.php?seccion=detalle&id=<?= $tipo["id_autos"] ?> ">ver detalle</a>
                        </header>
                    </article>
                    <!--/home article -->
                <?php
                endforeach;
            else :
                ?>
                <div class=" col-12">
                    <p class="text-danger text-center">No hay productos disponibles</p>
                </div>
            <?php
            endif;
            ?>
        </div>
    </div>



</section>