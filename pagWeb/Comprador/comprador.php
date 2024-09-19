<?php
session_start();

// Verificar si el usuario está autenticado
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$userId = $_SESSION['user_id'];
$userName = $_SESSION['nombre']; // Usar 'nombre' en lugar de 'name'

// Conectar a la base de datos
$host = "localhost";
$dbname = "bdartesanet";
$username = "root";
$password = "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error en la conexión a la base de datos: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARTESANET</title>
    <link rel="stylesheet" href="./css/userStyles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>

    <div class="logo">
        <nav class="navbar">
            <div class="logo-title">
                <h1>ARTESANET</h1>
                <img src="img/logo.png" alt="Logo de Artesanet">
            </div>

            <ul class="nav-links ">
                <li><a href="#">Inicio</a></li>
                <li class="dropdown">
                    <a href="#">Comunidades</a>
                    <div class ="dropdown-menu">
                        
                        <?php include 'php/menuComu.php'; ?>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#">Productos</a>
                    <div class="dropdown-menu">
                
                        <?php include 'php/menuProduct.php'; ?>
                    </div>
                </li>
                <li><a href="#">Ofertas</a></li>
            </ul>

            <!-- Caja de búsqueda -->
            <div class="search-box">
                <input type="text" placeholder="Buscar productos">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
            
            <!-- usuario  -->
            <div class="user-menu">
                <!-- Notification Dropdown -->
                <div class="dropdown notification-dropdown">
                    <a href="#" class="btn-cart">
                        <i class="fas fa-bell"></i>
                        <span class="notification-count">3</span>
                    </a>
                    <div class="dropdown-menu">
                        <h4>Notificaciones</h4>
                        <ul>
                            <li><a href="../../ModuloCompras/">Nueva oferta disponible</a></li>
                            <li><a href="../../chatbot/">Mensaje de soporte</a></li>
                            <li><a href="../../ModuloProducto/">Actualización de producto</a></li>
                        </ul>
                    </div>
                </div>
                
                <!-- Cart Dropdown -->
                <div class="dropdown cart-dropdown">
                    <a href="#" class="btn-cart"><i class="fas fa-shopping-cart"></i></a>
                    <span class="notification-count">3</span>
                    <div class="dropdown-menu">
                        <h4>Tu Carrito</h4>
                        <ul>
                            <li>Producto 1 - $20</li>
                            <li>Producto 2 - $15</li>
                            <li>Producto 3 - $30</li>
                        </ul>
                        <a href="../../ModuloProducto/" class="btn-card">Ver Carrito</a>
                    </div>
                </div>

                <!-- Profile Dropdown -->
                <div class="profile-dropdown">
                    <a href="#" class="btn-profile">
                        <i class="fas fa-user"></i>
                        <span class="username"><?php echo htmlspecialchars($userName); ?></span>
                    </a>
                    
                    <!-- Dropdown Menu -->
                    <div class="profile-dropdown-menu">
                        <div class="profile-header">
                            <img src="img/user.jpg" alt="Foto de perfil">
                            <div class="user-info">
                                <h4><?php echo htmlspecialchars($userName); ?></h4>
                                <p>Miembro desde 2023</p>
                            </div>
                        </div>
                        <ul class="profile-menu">
                            <li><a href="../../ModuloProducto/"><i class="fas fa-shopping-bag"></i> Historial de Compras</a></li>
                            <li><a href="../../ModuloProducto/"><i class="fas fa-heart"></i> Lista de Deseos</a></li>
                            <li><a href="../../ModuloProducto/"><i class="fas fa-cog"></i> Configuración de Perfil</a></li>
                            <li><a href="../../ModuloDifusion"><i class="fas fa-sign-out-alt"></i>Cerrar Sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <!-- Sección de bienvenida -->
    <section class="welcome-section">
        <h1>Bienvenido,  <?php echo htmlspecialchars($userName); ?>!</h1>
    </section>

    <!-- Sección principal de productos y comunidades -->
    <section class="main-section">
        <div class="right">
            <h2>Conoce nuestras comunidades</h2>
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

    <!-- Pie de página -->
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