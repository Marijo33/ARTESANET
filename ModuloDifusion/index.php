<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARTESANET</title>
    <link rel="stylesheet" href="./css/styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>

    
    <div class="logo">
        <nav class="navbar">
            <div class="logo-title">
                
                <h1>ARTESANET</h1>
                <img src="img/logo.png" alt="">


            </div>
            <ul class="nav-links">
                <li><a href="#">Incio</a></li>
                <li class="dropdown">
                    <a href="#">Comunidades</a>
                    <?php include 'php/menuComu.php'; ?>
                </li>
                
                <li class="dropdown">
                    <a href="#">Productos</a>
                    <?php include 'php/menuProduct.php'; ?>
                </li>
                <li><a href="#">Ofertas</a></li>
            </ul>
            <div class="search-box">
                <input type="text" placeholder="Search">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
            
            <div class="buttons">
                <a href="../ModuloAutenticacion/login.php" class="btn-login">LOGIN <i class="fa fa-arrow-right"></i></a>
            </div>
               
            
        </nav>
    </div>

    <section class="welcome-section">
        <h1>Bienvenido a ARTESANET</h1>
        <p>Conectando culturas, creando futuros. Explora las comunidades, artesanos, ofertas, y eventos que nuestra plataforma ofrece.</p>
    </section>

    <section class="mision-vision">
        
        <div class="card">
            <img src="./img/fondo2">
            <h2>Misión</h2>
            <p>Corto plaso Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sint minus quisquam cum debitis qui animi ad expedita sunt, sequi exercitationem quibusdam facilis consequatur, ut voluptate optio culpa ex! Autem, reprehenderit.</p>
        </div>
        <div class="card">
            <img src="img/fondo3.jpg" alt="Visión">
            <h2>Visión</h2>
            <p>Largo plazo Lorem, ipsum dolor sit amet consectetur adipisicing elit. Asperiores vitae suscipit sit dolorem dolorum quisquam, magnam nostrum debitis explicabo veniam pariatur quaerat doloribus reprehenderit hic aperiam non excepturi sapiente exercitationem?</p>
        </div>
    
    </section>

    <section class="main-section">
        <div class="right">
            <h2>Conoce nuestra comunidades</h1>
            <div>
                <?php include 'php/comunidades.php'; ?>
                
            </div> 
        </div>

        <div class="left">
            
            <h2>Mira nuestros productos</h2>
            <div class="productArtesano-section">
                <?php include 'php/productos.php'; ?>
            </div>

            <h2>Conoce a nuestros artesanos</h2>
            <div class="productArtesano-section">
                <?php include 'php/artesanos.php'; ?>
            </div>
        </div>

    </section>

    <section class="more-content">
        <div class="container">
            <!--
            <div class="card">
                <h2>Ferias o eventos</h2>
                <p>Conoce a nuestras comunidades y descubre sus técnicas artesanales.</p>
                <a href="#" class="btn-card">Ver Comunidades</a>
            </div> -->

            <div class="card">
                <h2>Ofertas Especiales</h2>
                <p>Aprovecha los descuentos y promociones exclusivas.</p>
                <a href="#" class="btn-card">Ver Ofertas</a>
            </div>

            
            <div class="card">
                <h2>Conoce a los artesanos</h2>
                <p>Cada artesano tiene una historia única. Descubre sus trabajos y productos.</p>
                <a href="#" class="btn-card">Ver Perfiles</a>
            </div>
        </div>
    </section>

    <footer>
        <div class="footer-container">
            <div class="footer-left">
                <h3>ARTESANET</h3>
                <p>Conectando culturas, creando futuro.</p>
                <p>&copy; 2024 Todos los derechos reservados.</p>
            </div>
            <div class="footer-center">
                <h3>Navegación</h3>
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Comunidades</a></li>
                    <li><a href="#">Productos</a></li>
                    <li><a href="#">Perfil</a></li>
                </ul>
            </div>
            <div class="footer-right">
                <h3>Contacto</h3>
                <p>Email: info@artesanet.com</p>
                <p>Teléfono: +591 123 45678</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
    

   
    
</body>
</html>
