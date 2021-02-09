<?php

$query_tipos = "SELECT tipo FROM tipos";
$tipos = select($query_tipos);


?>
<section class="container">
    <div class="row my-4">
        <article class="col-12">
            <div class="card">
                <div class="card-header">
                    <h2 class="h4 text-dark card-title">Audi <span class="text-black-50 fs-90">Nuevo auto</span></h2>
                </div>
                <div class="card-body">
                    <form action="acciones/crear.php" method="post" enctype="multipart/form-data">
                        <div class="row">

                            <div class="col-4">
                                <div class="form-group">
                                    <label for="tipo">Tipo</label>
                                    <select id="tipo" class="form-control" name="tipo">

                                        <?php
                                        foreach ($tipos as $tipo) :
                                        ?>
                                            <option value="<?= $tipo["tipo"]; ?>"><?= $tipo["tipo"]; ?></option>
                                        <?php
                                        endforeach;
                                        ?>
                                        <option value="otro">otros</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-4">
                                <div class="form-group">
                                    <label for="modelo">Modelo</label>
                                    <input type="text" class="form-control" name="modelo" id="Modelo">
                                </div>
                            </div>
                            <div class="col-auto">
                                <div class="form-group">
                                    <label for="anio">año</label>
                                    <input type="number" class="form-control" name="anio" id="anio" placeholder="2000">
                                </div>
                            </div>




                            <div class="col-auto">
                                <div class="form-group">
                                    <label for="puertas">Puertas</label>
                                    <input type="number" class="form-control" name="puertas" id="puertas" placeholder="1">
                                </div>
                            </div>

                        </div>
                </div>

                <div class="form-group">
                    <div class="form-group">
                        <label for="foto">Foto</label>
                        <input type="file" class="form-control-file" name="foto" id="foto" aria-describedby="fileHelpId">
                        <small id="fileHelpId" class="form-text text-muted">La imagen tiene que ser en formato png/jpg</small>
                    </div>
                </div>

                <div class="form-group">
                    <label for="descripcion">Descripcion</label>
                    <textarea class="form-control" name="descripcion" id="descripcion" rows="5"></textarea>
                </div>




                <button class="btn btn-outline-primary " type=" submit">Crear</button>
                </form>
            </div>
    </div>
    </article>
    </div>
</section>