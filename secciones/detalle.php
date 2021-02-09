<?php

$tipoEnUrl = $_GET["id"];

$audiseleccionado = "SELECT * FROM autos WHERE id_autos =  $tipoEnUrl";

$autoselccionado = select($audiseleccionado);

$autoselccionado = $autoselccionado[0];
?>
<style>
    #imgdetalle {
        max-width: 450px !important;
    }
</style>

<section id="home-banner" style="background-image: url(<?= $autoselccionado["foto"] ?>);">
    <div class="content">
        <div class="container" data-wow-duration="1s"> <span class="wow fadeIn">descubri</span>
            <h1 class="wow fadeInUp">
                <?= $autoselccionado["modelo"] ?></h1>


        </div>
    </div>
    <div class="arrow bounce"> <i class="fa fa-arrow-down fa-2x"></i> </div>
</section>
<section id="latest-news-block">
    <div class="container">
        <div class="row">
            <div class="row wow fadeIn">

                <!--Grid column-->
                <div class="col-md-6 mb-4">

                    <img src="<?= $autoselccionado["foto"] ?>" class="img-fluid" alt="" id="imgdetalle">

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-6 mb-4">

                    <!--Content-->
                    <div class="p-4">

                        <div class="mb-3">
                            <a href="">
                                <span class="badge purple mr-1"><?= $autoselccionado["tipo"] ?></span>
                            </a>
                            <a href="">
                                <span class="badge blue mr-1"><?= $autoselccionado["anio"] ?></span>
                            </a>
                            <a href="">
                                <span class="badge red mr-1">Puertas: <?= $autoselccionado["puertas"] ?></span>
                            </a>
                        </div>
                        <!--
            
                        </p>-->
                        <div class="mt-5 p-5">
                            <h3 class="mt-5"> <?= $autoselccionado["modelo"] ?></h3>
                        </div>
                        <p> <?= $autoselccionado["descripcion"] ?></p>
                        <!--
                        </form>

                    </div>
                    <!--Content-->

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </div>
        </div>



</section>