<?php
include 'conexion.php';

$sql = "SELECT nomCat FROM categoria";
$result = $conn->query($sql);
?>

<ul class="dropdown-menu">
    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<li><a href="#">' . $row["nomCat"] . '</a></li>';
        }
    } else {
        echo "No hay categorias disponibles.";
    }
    
    $conn->close(); // Cerrar conexión
    ?> 
</ul>