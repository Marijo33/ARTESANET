
<?php
include('../php/conexion.php');
$conexion = conexion();

$sql = "SELECT 
    u.nombre, u.apellido, u.email, u.direccion, u.telefono, a.idComunidad
FROM 
    usuario u, 
    artesano a
WHERE 
    u.idUsuario = a.idArtesano;";

$resultado = $conexion->query($sql); // pediticion a la base de datos
$datos = mysqli_fetch_all($resultado, MYSQLI_ASSOC); //convirtiendo a array

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>
    <div class="container-xxl">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Lista de usuarios artesanos</p>
    </div>
    <div class="container-xxl">
        
        <a href="/proyinf281/artesanet/vistas/anadir_usuario_artesano.php" 
            class="btn btn-info" 
            style="float: right; padding: 10px; margin: 20px; text-decoration: none; display: block; width: auto;">
                Agregar usuario
        </a>

    </div>
    
    
    <div class="container-xxl table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre(s)</th>
                <th scope="col">Apellido(s)</th>
                <th scope="col">email</th>
                <th scope="col">Direccion</th>
                <th scope="col">Telefono</th>
                <th scope="col">ID Comunidad</th>
                <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php $i= 1;
                foreach ($datos as $fila) {    ?>

                    <tr>
                        <td><?php echo $i ?></td>
                        <td><?php echo $fila[0] ?></td>
                        <td><?php echo $fila[1] ?></td>
                        <td><?php echo $fila[2] ?></td>
                        <td><?php echo $fila[3] ?></td>
                        <td><?php echo $fila[4] ?></td>
                        <td><?php echo $fila[5] ?></td>
                        <td>
                            <a href="actualizar.php?id=<?php echo $fila[0] ?>" class="btn btn-warning">Editar</a>
                            <a href="borrar.php?id=<?php echo $fila[0] ?>" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                    
                <?php $i++;} 
                
                ?>
            </tbody>
        </table>
    </div>

 
</body>
</html>