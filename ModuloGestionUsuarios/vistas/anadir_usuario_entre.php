<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>

    <div class="container">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Agregar personal de entrega</p>
    </div>
    <div class="contenedor">
        <div class="container ">
            <div style="text-align: center; margin: 10px"><img src='../img/logo.jpg' class="img-thumbnail" alt="..." width="250" height="250" ></div>
            <div class="mb-3">
                <input class="form-control" type="file" id="formFile">
            </div>
            <form class="row g-3" style="padding-bottom:20px ;">
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">ID usuario</label>
                    <input type="email" class="form-control" id="inputEmail4">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Password</label>
                    <input type="password" class="form-control" id="inputPassword4">
                </div>
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Nombre(s)</label>
                    <input type="text" class="form-control" id="inputAddress" >
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Apellido(s)</label>
                    <input type="text" class="form-control" id="inputAddress2" >
                </div>

                <div class="col-md-12">
                    <label for="inputCity" class="form-label">Tipo de vehiculo</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>

                <div class="col-md-12">
                    <label for="inputCity" class="form-label">Placa de vehiculo</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>
                
                
            </form> 
        </div>
        <div class="container ">
            <!-- Contenido de la derecha -->

            <form class="row g-3">

                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Email</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="ejemplo@gmail.com">
                </div>

                
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Fecha de nacimiento</label>
                    <input type="date" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
            
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Telefono</label>
                    <input type="text" class="form-control" id="inputAddress2" >
                </div>

                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Carnet de identidad </label>
                    <input type="text" class="form-control" id="inputAddress2" >
                </div>

                <div class="col-md-12">
                    <label for="inputCity" class="form-label">Edad</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>

                <div class="col-md-12">
                    <label for="inputCity" class="form-label">Hora ingreso</label>
                    <input type="time" class="form-control" id="inputCity">
                </div>

                <div class="col-md-12">
                    <label for="inputCity" class="form-label">Hora salida</label>
                    <input type="time" class="form-control" id="inputCity">
                </div>
                
                
                
                <div class="col-12" style="margin-top: 20px; text-align: center">
                    <button type="submit" class="btn btn-primary" >Agregar</button>
                </div>
            </form>
            
        </div>
    </div>

    <style>
    .contenedor {
        display: flex;
        width: 100%;
        height: 100vh; /* Hace que los div ocupen toda la altura de la pantalla */
    }

    .container {
        flex: 1; /* Hace que ambos divs ocupen el mismo ancho */
        padding: 20px;
        box-sizing: border-box; /* Incluye el padding dentro del tamaño del div */
    }
    </style>
 
</body>
</html>