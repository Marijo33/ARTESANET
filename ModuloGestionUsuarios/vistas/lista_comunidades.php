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
        <button type="button" class="btn btn-info" style="float: right; padding: 10px; margin: 20px; ">Agregar usuario </button>
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
                <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                

                <tr>
                <th scope="row">1</th>
                <td>Juan</td>
                <td>Perez</td>
                <td>juan@gmail.com</td>
                <td>Calle false nro345</td>
                <td>653563456</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
                </tr>

                <tr>
                <th scope="row">2</th>
                <td>Maria</td>
                <td>Gonzalez</td>
                <td>maria@gmail.com</td>
                <td>Avenida Siempre Viva 123</td>
                <td>698745632</td>
                <td>
                    <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                    <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                </td>
                </tr>

                <tr>
                    <th scope="row">3</th>
                    <td>Carlos</td>
                    <td>Martinez</td>
                    <td>carlos@gmail.com</td>
                    <td>Calle Larga 456</td>
                    <td>698745631</td>
                    <td>
                        <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                        <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                    </td>
                </tr>

                <tr>
                    <th scope="row">4</th>
                    <td>Ana</td>
                    <td>Lopez</td>
                    <td>ana@gmail.com</td>
                    <td>Calle Principal 789</td>
                    <td>654789321</td>
                    <td>
                        <button type="button" class="btn btn-sm" style="background-color:yellow;">Editar</button>
                        <button type="button" class="btn btn-sm" style="background-color:tomato;">Eliminar</button>
                    </td>
                </tr>

                <tr>
                    <th scope="row">5</th>
                    <td>Pedro</td>
                    <td>Rodriguez</td>
                    <td>pedro@gmail.com</td>
                    <td>Calle Secundaria 101</td>
                    <td>654987123</td>
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