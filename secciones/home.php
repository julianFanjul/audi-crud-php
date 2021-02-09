<section id="home-banner" style="background-image: url(img/b-1.jpg);">
    <div class="content">
        <div class="container" data-wow-duration="1s"> <span class="wow fadeIn">descubri</span>
            <h1 class="wow fadeInUp">
                la verdadera <span>ingenieria</span>. </h1>
        </div>
    </div>
    <div class="arrow bounce"> <i class="fa fa-arrow-down fa-2x"></i> </div>
</section>

<section id="latest-news-block">
    <div class="container">
        <div class="row">
            <!--section-title-->
            <div class="section-title text-center wow fadeInUp">
                <h2>CATEGORIAS</h2>

            </div>
            <!--/section-title-->

            <?php
            $query_tiposDeAutos = "SELECT tipo, id_tipos, fototipoauto FROM tipos";

            $Tipos = select($query_tiposDeAutos);

            if (!empty($Tipos)) :
                foreach ($Tipos as $tipo) :
            ?>
                    <!--home article-->
                    <article class="col-md-3 col-sm-6 col-xs-12">
                        <header class="entry-header"> <img src="<?= $tipo["fototipoauto"] ?>" alt="<?= $tipo["tipo"] ?>">
                            <h3><?= $tipo["tipo"] ?></h3>
                            <a href="index.php?seccion=tipo&id=<?= $tipo["tipo"] ?> ">ver todos</a>
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