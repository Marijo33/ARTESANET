<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>
    <div class="container-xxl">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Lista del personal de entrega</p>
    </div>
    <div class="container-xxl">
        
        <a href="/proyinf281/artesanet/vistas/anadir_usuario_entre.php" 
            class="btn btn-info" 
            style="float: right; padding: 10px; margin: 20px; text-decoration: none; display: block; width: auto;">
                Agregar usuario
        </a>

    </div>
    
    
    <div class="container-xxl">
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre(s)</th>
                <th scope="col">Apellido(s)</th>
                <th scope="col">email</th>
                <th scope="col">Direccion</th>
                <th scope="col">Telefono</th>
                <th scope="col">Vehiculo</th>
                <th scope="col">Ingreso</th>
                <th scope="col">Salida</th>
                <th scope="col">Acciones</th>

                </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Santos</td>
                <td>Perez</td>
                <td>santos@gmail.com</td>
                <td>Calle false nro345</td>
                <td>653563456</td>
                <td>Moto</td>
                <td>08:00</td>
                <td>13:30</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
            </tr>

            <tr>
                <th scope="row">2</th>
                <td>Ana</td>
                <td>Martinez</td>
                <td>ana.martinez@gmail.com</td>
                <td>Calle Los Pinos 123</td>
                <td>654789123</td>
                <td>Coche</td>
                <td>09:00</td>
                <td>14:00</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
            </tr>

            <tr>
                <th scope="row">3</th>
                <td>Carlos</td>
                <td>Gomez</td>
                <td>carlos.gomez@yahoo.com</td>
                <td>Avenida Central 456</td>
                <td>657987321</td>
                <td>Bicicleta</td>
                <td>07:30</td>
                <td>12:30</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
            </tr>

            <tr>
                <th scope="row">4</th>
                <td>Laura</td>
                <td>Fernandez</td>
                <td>laura.fernandez@hotmail.com</td>
                <td>Calle Las Flores 789</td>
                <td>659123456</td>
                <td>Patinete</td>
                <td>10:00</td>
                <td>15:30</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
            </tr>

<tr>
    <th scope="row">5</th>
    <td>Pedro</td>
    <td>Sanchez</td>
    <td>pedro.sanchez@gmail.com</td>
    <td>Camino Verde 321</td>
    <td>651234567</td>
    <td>Coche</td>
    <td>11:00</td>
    <td>16:00</td>
    <td>
        <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
        <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
    </td>
</tr>


                





            </tbody>
        </table>
    </div>

 
</body>
</html>