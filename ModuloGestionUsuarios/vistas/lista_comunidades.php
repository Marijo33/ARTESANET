<?php
include('../php/conexion.php');
$conexion = conexion();

$sql = "SELECT 
    c.nombre, c.descripcion, c.ubicacion, c.categoria
FROM 
    comunidad c;";

$resultado = $conexion->query($sql); // pediticion a la base de datos
$datos = mysqli_fetch_all($resultado, MYSQLI_NUM); //convirtiendo a array

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>
    <div class="container-xxl">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Lista de comunidades</p>
    </div>
    <div class="container-xxl">
        <button type="button" class="btn btn-info" style="float: right; padding: 10px; margin: 20px; ">Agregar comunidad </button>
    </div>
    
    
    <div class="container-xxl table-responsive" >
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Ubicacion</th>
                <th scope="col">Categoria</th>
                </tr>
            </thead>
            <tbody>
            <?php
                $i= 1;
                foreach ($datos as $fila) {    ?>

                    <tr>
                        <td><?php echo $i ?></td>
                        <td><?php echo $fila[0] ?></td>
                        <td><?php echo $fila[1] ?></td>
                        <td><?php echo $fila[2] ?></td>
                        <td><?php echo $fila[3] ?></td>
                      
                       
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