<?php
// Conexión a la base de datos
include('conexion.php');
$conn = conexion();
// Capturamos los datos del formulario
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$email = $_POST['email'];
$password = $_POST['password'];
$password = md5($password);
$fecha_nacimiento = $_POST['fecha_nacimiento'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$tipo_administrador = $_POST['tipo_administrador']; // Asumimos que agregaste un name al select

// Insertar en la tabla usuario
$sql_usuario = "INSERT INTO usuario (nombre, apellido, email, password, fechaNac, direccion, telefono)
                VALUES ('$nombre', '$apellido', '$email', '$password', '$fecha_nacimiento', '$direccion', '$telefono')";

if (mysqli_query($conn, $sql_usuario)) {
    // Obtener el idUsuario generado
    $idUsuario = mysqli_insert_id($conn);

    // Insertar en la tabla administrador usando el idUsuario como idAdministrador
    $sql_administrador = "INSERT INTO administrador (idAdministrador, tipoPermiso)
                          VALUES ('$idUsuario', '$tipo_administrador')";

    if (mysqli_query($conn, $sql_administrador)) {
        header("Location: ../vistas/lista_usuario_adm.php");
    } else {
        echo "Error al insertar en la tabla administrador: " . mysqli_error($conn);
    }

} else {
    echo "Error al insertar en la tabla usuario: " . mysqli_error($conn);
}

// Cerrar la conexión
mysqli_close($conn);
?>
