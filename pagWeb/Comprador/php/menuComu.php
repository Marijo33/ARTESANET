<?php
include 'conexion.php';

$sql = "SELECT nombre FROM comunidad";
$result = $conn->query($sql);
?>

<ul class="dropdown-menu">
    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<li><a href="#">' . $row["nombre"] . '</a></li>';
        }
    } else {
        echo "No hay comunidades disponibles.";
    }
    
    $conn->close(); // Cerrar conexión
    ?> 
</ul>