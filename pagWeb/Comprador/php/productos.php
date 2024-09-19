<?php
include 'conexion.php';

$sql = "SELECT nombre, descripcion, imagen, precio FROM producto ORDER BY RAND() LIMIT 2";
$result = $conn->query($sql);
?>

<?php
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<div class="card product-artesano">';
        echo '<h3>' . $row["nombre"] . '</h3>';
        echo '<img src="img/' . $row["imagen"] . '" alt="Imagen de producto">';
        echo '<p>' . $row["descripcion"] . '</p>';
        echo '<p>' . $row["precio"] . ' Bs</p>';
        echo '<a href="#" class="btn-card">Ver Producto</a>';
        echo '</div>';
    }
} else {
    echo "No hay productos disponibles.";
}

$conn->close(); // Cerrar conexión
?> 