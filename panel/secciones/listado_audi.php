<?php

$query_autos = "SELECT * FROM autos";
$autos = select($query_autos);


?>
<section class="container">
    <div class="row my-4">
        <article class="col-12">
            <div class="card">
                <div class="card-header">
                    <h2 class="h4 text-dark card-title">Audi <span class="text-black-50 fs-90">Listado de Autos</span></h2>
                </div>
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-bordered table-sm fs-90">
                            <thead class="thead-light text-center">
                                <tr>

                                    <th>foto</th>
                                    <th>Modelo</th>
                                    <th>Tipo</th>
                                    <th>Puertas</th>
                                    <th>Año</th>



                                </tr>
                            </thead>

                            <tbody class="text-center">
                                <?php
                                foreach ($autos as $auto) :
                                ?>
                                    <tr>

                                        <td class="foto"><img src="../<?php echo $auto["foto"] ?>" alt="<?php echo $auto["modelo"] ?>"></td>
                                        <td><?php echo $auto["modelo"] ?></td>
                                        <td><?php echo $auto["tipo"] ?></td>
                                        <td><?php echo $auto["puertas"] ?> </td>
                                        <td><?php echo $auto["anio"] ?></td>





                                        </td>
                                    </tr>
                                <?php
                                endforeach;
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <a href="index.php?seccion=crear_audi" class="btn btn-outline-primary" my-2">Añadir auto</a>
                </div>
            </div>
        </article>
    </div>
</section>