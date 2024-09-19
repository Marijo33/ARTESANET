<?php
include('../php/conexion.php');
$conexion = conexion();

$sql = "SELECT 
            u.idUsuario, u.nombre, u.apellido, u.email, u.direccion, u.telefono
        FROM 
            usuario u
        JOIN 
            comprador c ON u.idUsuario = c.idComprador
        WHERE 
            u.activo = TRUE";

$resultado = $conexion->query($sql); // Petición a la base de datos
$datos = mysqli_fetch_all($resultado, MYSQLI_ASSOC); // Convirtiendo a array
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>
    <div class="container-xxl">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Lista de usuarios clientes</p>
    </div>
    <div class="container-xxl">
        <a href="/proyinf281/artesanet/vistas/anadir_usuario.php" 
            class="btn btn-info" 
            style="float: right; padding: 10px; margin: 20px; text-decoration: none; display: block; width: auto;">
                Agregar usuario
        </a>
    </div>
    <div class="container-xxl table-responsive">
        <table class="table table-striped responsive">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre(s)</th>
                    <th scope="col">Apellido(s)</th>
                    <th scope="col">Email</th>
                    <th scope="col">Dirección</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
                $i = 1;
                foreach ($datos as $fila) { ?>
                    <tr>
                        <td><?php echo $i; ?></td>
                        <td><?php echo htmlspecialchars($fila['nombre']); ?></td>
                        <td><?php echo htmlspecialchars($fila['apellido']); ?></td>
                        <td><?php echo htmlspecialchars($fila['email']); ?></td>
                        <td><?php echo htmlspecialchars($fila['direccion']); ?></td>
                        <td><?php echo htmlspecialchars($fila['telefono']); ?></td>
                        <td>
                            <a href="../php/editar_usu.php?id=<?php echo $fila['idUsuario']; ?>" class="btn btn-warning">Editar</a>
                            <a href="../php/borrar_usuario.php?id=<?php echo $fila['idUsuario']; ?>" class="btn btn-danger" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">Eliminar</a>
                        </td>
                    </tr>
                <?php $i++; } ?>
            </tbody>
        </table>
    </div>
</body>
</html>
