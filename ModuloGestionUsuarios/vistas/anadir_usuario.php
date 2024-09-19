<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>

    <div class="container">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Agregar usuario cliente</p>
    </div>
    <form class="row g-3" action="../php/agregar_cli.php" method="post">
        <div class="container">
            <!-- Contenido de la izquierda -->
            <div style="text-align: center; margin: 10px"><img src='../img/logo.jpg' class="img-thumbnail" alt="..." width="250" height="250" ></div>
            <div class="mb-3">
                <input class="form-control" type="file" id="formFile">
            </div>
            
            <div class="col-md-12">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="text" class="form-control" id="inputPassword4" name="password"
                    pattern="(?=.*\W)(?=.*\d)(?=.*[a-zA-Z]).{8,}" 
                    title="La contraseña debe tener al menos 8 caracteres, incluyendo al menos un carácter especial, una letra y un número." 
                    required>
            </div>

            <div class="col-12">
                <label for="inputNombre" class="form-label">Nombre(s)</label>
                <input type="text" class="form-control" id="inputNombre" name="nombre">
            </div>
            <div class="col-12">
                <label for="inputApellido" class="form-label">Apellido(s)</label>
                <input type="text" class="form-control" id="inputApellido" name="apellido">
            </div>
        </div>
        <div class="container " style="padding-top: 41px;;">

            <div class="col-12">
                <label for="inputEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail" name="email" placeholder="ejemplo@gmail.com">
            </div>
            <div class="col-md-6">
                <label for="fecha-nacimiento" class="form-label">Fecha de Nacimiento:</label>
                <input type="date" id="fecha-nacimiento" name="fecha_nacimiento">
            </div>
            <div class="col-12">
                <label for="inputDireccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="inputDireccion" name="direccion" placeholder="1234 Main St">
            </div>
            <div class="col-12">
                <label for="inputTelefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="inputTelefono" name="telefono" placeholder="123-456-7890">
            </div>
            <div class="col-12">
                <label for="inputCarnet" class="form-label">Carnet de identidad</label>
                <input type="text" class="form-control" id="inputCarnet" name="carnet">
            </div>
            
            <div class="col-12" style="margin-top: 20px; text-align: center">
                <button type="submit" class="btn btn-primary">Agregar</button>
            
            </div>
        </div>

    </form>

   
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