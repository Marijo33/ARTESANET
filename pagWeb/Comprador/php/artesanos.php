<?php
include 'conexion.php';

$sql = "SELECT ux.nombre,ux.imagen, ax.descripcion FROM artesano ax, usuario ux
        WHERE ax.idArtesano = ux.idUsuario
        ORDER BY RAND() LIMIT 2";
$result = $conn->query($sql);
?>

<?php
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<div class="card product-artesano">';
        echo '<h3>' . $row["nombre"] . '</h3>';
        echo '<img src="img/' . $row["imagen"] . '" alt="User">';
        echo '<p>' . $row["descripcion"] . '</p>';
        echo '<a href="#" class="btn-card">Ver Perfil</a>';
        echo '</div>';
    }
} else {
    echo "No hay artesanos disponibles.";
}

$conn->close(); // Cerrar conexión
?> 