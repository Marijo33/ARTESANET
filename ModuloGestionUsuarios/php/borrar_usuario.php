<?php
include('../php/conexion.php');
$conexion = conexion();

// Verificar si se ha recibido el ID del usuario
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Preparar y ejecutar la actualización del estado del usuario
    $sql = "UPDATE usuario SET activo = FALSE WHERE idUsuario = ?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        header("Location: ../vistas/lista_usuario.php");
    } else {
        echo "Error al desactivar el usuario.";
    }
} else {
    echo "ID no especificado.";
}

$conexion->close();
?>
