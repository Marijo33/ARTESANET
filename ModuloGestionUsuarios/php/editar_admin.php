<?php
include('../php/conexion.php');
$conexion = conexion();

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "SELECT u.*, ad.tipoPermiso FROM usuario u JOIN administrador ad ON u.idUsuario = ad.idAdministrador WHERE u.idUsuario = ?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($resultado->num_rows > 0) {
        $admin = $resultado->fetch_assoc();
    } else {
        echo "No se encontró el administrador.";
        exit;
    }
} elseif ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $idAdministrador = $_POST['idAdministrador'];
    $password = $_POST['password'];
    $password = md5($password);
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['email'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $direccion = $_POST['direccion'];
    $telefono = $_POST['telefono'];
    $tipo_administrador = $_POST['tipo_administrador'];

    $sql = "UPDATE usuario u JOIN administrador ad ON u.idUsuario = ad.idAdministrador 
            SET u.password=?, u.nombre=?, u.apellido=?, u.email=?, u.fechaNac=?, u.direccion=?, u.telefono=?, ad.tipoPermiso=? 
            WHERE u.idUsuario=?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("ssssssssi", $password, $nombre, $apellido, $email, $fecha_nacimiento, $direccion, $telefono, $tipo_administrador, $idAdministrador);

    if ($stmt->execute()) {
        $message = "Administrador actualizado correctamente.";
        $message_type = "success";
    } else {
        $message = "Error al actualizar el administrador.";
        $message_type = "danger";
    }
    echo "<div class='alert alert-$message_type' role='alert'>$message</div>";
    echo "<meta http-equiv='refresh' content='2;url=../vistas/lista_usuario_adm.php'>";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>

    <div class="container">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">
            <?php echo isset($admin) ? 'Editar Usuario Administrador' : 'Agregar Usuario Administrador'; ?>
        </p>
    </div>
    <div class="container d-flex justify-content-center align-items-center full-height">
    <div class="row">
    <div class="col-md-24">
    <form class="row g-3 container " action="editar_admin.php" method="post" style="margin-left: 50px; margin-right: 60px">
        <div class="container">
            <div style="text-align: center; margin: 10px">
                <img src='../img/logo.jpg' class="img-thumbnail" alt="..." width="250" height="250">
            </div>
            <?php if (isset($admin)) { ?>
                <input type="hidden" name="idAdministrador" value="<?php echo htmlspecialchars($admin['idUsuario']); ?>">
            <?php } ?>

            <div class="col-md-12">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="text" class="form-control" id="inputPassword4" name="password" value="<?php echo isset($admin) ? htmlspecialchars($admin['password']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="inputNombre" class="form-label">Nombre(s)</label>
                <input type="text" class="form-control" id="inputNombre" name="nombre" value="<?php echo isset($admin) ? htmlspecialchars($admin['nombre']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="inputApellido" class="form-label">Apellido(s)</label>
                <input type="text" class="form-control" id="inputApellido" name="apellido" value="<?php echo isset($admin) ? htmlspecialchars($admin['apellido']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="inputEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail" name="email" value="<?php echo isset($admin) ? htmlspecialchars($admin['email']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="fecha-nacimiento" class="form-label">Fecha de Nacimiento</label>
                <input type="date" class="form-control" id="fecha-nacimiento" name="fecha_nacimiento" value="<?php echo isset($admin) ? htmlspecialchars($admin['fechaNac']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="inputDireccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="inputDireccion" name="direccion" value="<?php echo isset($admin) ? htmlspecialchars($admin['direccion']) : ''; ?>">
            </div>

            <div class="col-12">
                <label for="inputTelefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="inputTelefono" name="telefono" value="<?php echo isset($admin) ? htmlspecialchars($admin['telefono']) : ''; ?>">
            </div>

            <p>Tipo de administrador</p>
            <select class="form-select" name="tipo_administrador" aria-label="Tipo de administrador">
                <option disabled>Tipo de administrador</option>
                <option value="General" <?php if (isset($admin) && $admin['tipoPermiso'] == 'General') echo 'selected'; ?>>General</option>
                <option value="Comunidad" <?php if (isset($admin) && $admin['tipoPermiso'] == 'Comunidad') echo 'selected'; ?>>De comunidad</option>
            </select>

            <div class="col-12" style="margin-top: 20px; text-align: center; margin-bottom: 20px" >
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </div>
    </form>
    </div>
    </div>
    </div>
</body>
</html>
