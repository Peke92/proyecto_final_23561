<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Proyecto Final</title>
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
                                <a class="nav-link active" href="#">La conferencia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Los oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link link-info" href="#ser-orador">Conviértete en orador</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-success" href="FrontController?accion=comprar">Comprar tickets</a>
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

    <!-- carrusel -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/ba1.jpg" class="d-block w-100" alt="imagen Buenos Aires 1">
            </div>
            <div class="carousel-item">
                <img src="img/ba2.jpg" class="d-block w-100" alt="imagen Buenos Aires 2">
            </div>
            <div class="carousel-item">
                <img src="img/ba3.jpg" class="d-block w-100" alt="imagen Buenos Aires 3">
            </div>
        </div>

        <!-- caption carrusel -->
        <div class="container-bg-dark">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-lg-6 text-md-end text-center">
                        <div class="my-caption">
                            <h1>Conf Bs As</h1>
                            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para tí. Te esperamos!</p>
                            <p><a class="btn btn-outline-light" href="#ser-orador">Quiero ser orador</a> <a class="btn btn-success" href="FrontController?accion=comprar">Comprar tickets</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>

    <!-- seccion oradores -->
    <section>
        <div class="container">
            <div class="row">
                <h2 class="text-center text-uppercase"><span class="h2-span fw-light">conoce a los</span>oradores</h2>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img src="img/steve.jpg" class="img-fluid card-img-top" alt="img Steve" loading="lazy">
                        <div class="card-body">
                            <span class="badge text-bg-warning">Javascript</span>
                            <span class="badge text-bg-info">React</span>
                            <h3>Steve Jobs</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta vero aperiam pariatur expedita maxime beatae culpa vitae, quidem cupiditate at nulla ducimus sint harum ipsa dolore repellat ab delectus dolorum!</p>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img src="img/bill.jpg" class="img-fluid card-img-top" alt="img Bill" loading="lazy">
                        <div class="card-body">
                            <span class="badge text-bg-warning">Javascript</span>
                            <span class="badge text-bg-info">React</span>
                            <h3>Bill Gates</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptate impedit qui quam ratione dolor deserunt nemo eos excepturi nobis minus cumque atque nam vitae distinctio. Et vel repellendus architecto.</p>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="img/ada.jpg" class="img-fluid card-img-top" alt="img Ada" loading="lazy">
                        <div class="card-body">
                            <span class="badge text-bg-secondary">Negocios</span>
                            <span class="badge text-bg-danger">Startups</span>
                            <h3>Ada Lovelace</h3>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maxime, natus deserunt, ad quaerat nulla, consequuntur cum iure qui harum illo in sequi. Rem, doloribus. Earum doloribus sequi nihil reiciendis culpa.</p>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </section>

    <!-- seccion hawai -->
    <section class="section-dark">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-p-0">
                    <img src="img/honolulu.jpg" class="d-block w-100 img-cover" alt="Imagen Honolulu" loading="lazy">
                </div>
                <div class="col-md-6">
                    <h3>Bs As - Ocrubre</h3>
                    <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie).</p>
                    <p><a class="btn btn-outline-light" href="#">Conocé más</a></p>
                </div>
            </div>
        </div>
    </section>

    <!-- seccion conviértete en un orador / formulario -->
    <section>
        <div class="container" id="ser-orador">
            <div class="row">
                <div class="col-12 text-center">
                    <h2 class="text-center text-uppercase"><span class="h2-span fw-light">conviértete en un</span>orador</h2>
                    <p>Anótate como orador para dar una <a class="link-dashed" href="#">charla ignite</a>. Cuéntanos de qué quieres hablar!</p>
                </div>
            </div>
            <form class="row justify-content-center" action="FrontController?accion=insertarOrador" method="post">
                <div class="col-md-4 mb-3">
                    <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                </div>
                <div class="col-md-4 mb-3">
                    <input type="text" class="form-control" placeholder="Apellido" name="apellido">
                </div>
                <div class="col-12 col-md-8">
                    <textarea class="form-control fs-3" id="mensaje" rows="3" placeholder="Sobre qué quieres hablar?" name="tematica"></textarea>
                    <p class="text-secondary">Recuerda incluir un título para tu charla.</p>
                </div>
                <div class="col-12 col-md-8">
                	<div class="row g-3">
                		 <div class="col-auto">
                		 	<button class="btn btn-w-40 btn-success" type="submit">Enviar</button>
                		 </div>
                		 <div class="col-auto">
                		 	<button class="btn btn-w-40 btn-danger mb-5" type="reset">Borrar</button>
                		 </div>		            	
                	</div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
    