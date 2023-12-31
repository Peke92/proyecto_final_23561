<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Venta de tickets - Proyecto Final</title>
</head>
<body>
    <!-- header y navbar -->
    <header>
        <div class="container">
            <nav class="navbar navbar-dark navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="FrontController?accion=volver" title="Codo a Codo - Conf Bs As">
                        <img src="img/codoacodo.png" alt="Logo Codo a codo" height="60" class="d-inline-block align-middle" loading="lazy">
                        Conf Bs As
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent" data-bs-theme="dark">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="#">La conferencia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Los oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link link-info" href="FrontController#ser-orador">Conviértete en orador</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-success" href="FrontController?accion=comprar">Comprar tickets</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link text-warning" href="FrontController?accion=backoffice">Back Office</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>   

    <!-- seccion tickets -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center text-uppercase mb-4"><span class="h2-span fw-light">compra de</span>tickets</h2>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="card border-primary mb-4">
                    	<div class="card-header text-bg-primary">          	
                    		<h4>Estudiante</h4>
                    	</div>
                        <div class="card-body">
                            <p>Tiene un descuento</p>
                            <p class="fs-2 fw-bold">80%</p>
                            <p class="text-secondary">* presentar documentación</p>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card border-success mb-4">
                    	<div class="card-header text-bg-success">          	
                    		<h4>Trainee</h4>
                    	</div>
                        <div class="card-body">
                            <p>Tiene un descuento</p>
                            <p class="fs-2 fw-bold">50%</p>
                            <p class="text-secondary">* presentar documentación</p>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card border-warning">
                    	<div class="card-header text-bg-warning">          	
                    		<h4>Junior</h4>
                    	</div>
                        <div class="card-body">
                            <p>Tiene un descuento</p>
                            <p class="fs-2 fw-bold">15%</p>
                            <p class="text-secondary">* presentar documentación</p>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </section>

    <!-- seccion comprar ticket / formulario -->
    <section class="mb-5">
        <div class="container container-max720">
            <div class="row">
                <div class="col-12 text-center mb-3">
                    <h3>Valor de ticket: <span class="fs-2 fw-bold">$200</span></h3>
                </div>
            </div>
            <form class="row justify-content-center" action="FrontController?accion=insertar" method="post">
                <div class="col-md-6 mb-4">
                    <input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre">
                </div>
                <div class="col-md-6 mb-4">
                    <input type="text" class="form-control" placeholder="Apellido" id="apellido" name="apellido">
                </div>
                <div class="col-12 mb-3">
                    <input type="email" class="form-control" placeholder="Mail" id="mail" name="mail">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="cantidad" class="p-1">Cantidad</label>
                    <select class="form-select" id="cantidad" name="cant">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                </div>
                <div class="col-md-6 mb-4">
                    <label for="categoria" class="p-1">Categoría</label>
                    <select class="form-select" id="categoria" name="categoria">
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                    </select>
                </div>
                <div class="col-12 mb-2">
                    <div class="alert alert-primary fw-bold" id="total">
                        Total a pagar: $
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <button class="btn-w-100 btn btn-primary" id="resumen">Calcular total</button>
                </div>
                <div class="col-md-4 mb-3">
                   <button class="btn-w-100 btn btn-success" type="submit">Comprar</button>
                </div>
                <div class="col-md-4 mb-3">
                    <button class="btn-w-100 btn btn-danger" id="borrar">Borrar</button>
                </div>
            </form>
        </div>
    </section>

    <!-- footer -->
    <footer>
        <div class="container">
            <nav class="nav justify-content-center justify-content-lg-evenly">
                <a class="nav-link link-light" href="#">Preguntas frecuentes</a>
                <a class="nav-link link-light" href="#">Contáctanos</a>
                <a class="nav-link link-light" href="#">Prensa</a>
                <a class="nav-link link-light" href="#">Conferencias</a>
                <a class="nav-link link-light" href="#">Términos y condiciones</a>
                <a class="nav-link link-light" href="#">Privacidad</a>
                <a class="nav-link link-light" href="#">Estudiantes</a>
            </nav>
        </div>
    </footer>

    <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>