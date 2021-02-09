<section id="home-banner" style="background-image: url(img/b-1.jpg);">
    <div class="content">
        <div class="container" data-wow-duration="1s"> <span class="wow fadeIn">Envianos</span>
            <h1 class="wow fadeInUp">
                tu <span>mensaje</span>. </h1>
        </div>
    </div>
    <div class="arrow bounce"> <i class="fa fa-arrow-down fa-2x"></i> </div>
</section>
<div id="page-body">
    <div class="container">
        <div class="row">
            <!--blog posts container-->
            <div class="col-md-offset-3 col-md-6 page-block">
                <h1>Contacto</h1>
                <form method="post" action="config/enviar_contacto.php" style="padding-bottom:80px">
                    <div class="form-group">
                        <label for="exampleInputName">Nombre</label>
                        <input type="text" class="form-control" id="exampleInputName" placeholder="Nombre" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputMessage">Mensaje</label>
                        <textarea placeholder="Mensaje" name="mensaje" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-outline-primary">Enviar</button>
                </form>
                <!--blog posts container-->
            </div>
        </div>
    </div>