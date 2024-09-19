<?php
include 'conexion.php';

$sql = "SELECT imagen,nombre, descripcion FROM comunidad";
$result = $conn->query($sql);
?>

<div>
    <?php
    if ($result->num_rows > 0) {
        // Mostrar cada comunidad
        while ($row = $result->fetch_assoc()) {
            echo '<div class="card">';
            echo '<img src="img/' . $row["imagen"] . '" alt="Imagen de comunidad">';
            echo '<h3>' . $row["nombre"] . '</h3>';
            echo '<p>' . $row["descripcion"] . '</p>';
            echo '<a href="#" class="btn-card">Más Información</a>';
            echo '</div>';
        }
    } else {
        echo "No hay comunidades disponibles.";
    }

    $conn->close();
    ?>
</div>