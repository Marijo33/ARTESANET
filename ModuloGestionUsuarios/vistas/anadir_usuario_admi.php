<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>

    <div class="container">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Agregar usuario administrador</p>
    </div>
    <form class="row g-3" action="../php/agregar_adm.php" method="post">
        <div class="container">
            <!-- Contenido de la izquierda -->
            <div style="text-align: center; margin: 10px"><img src='../img/logo.jpg' class="img-thumbnail" alt="..." width="250" height="250" ></div>
            <div class="mb-3">
                <input class="form-control" type="file" id="formFile">
            </div>
            
            <div class="col-md-12">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="text" class="form-control" id="inputPassword4" name="password">
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
            <div class="col-12">
                <label for="fecha-nacimiento" class="form-label">Fecha de Nacimiento:</label>
                <input type="date" id="fecha-nacimiento" name="fecha_nacimiento">
            </div>
            <div class="col-12">
                <label for="inputDireccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="inputDireccion" name="direccion" placeholder="1234 Main St">
            </div>
            <div class="col-12" style="margin-bottom: 20px">
                <label for="inputTelefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="inputTelefono" name="telefono" placeholder="123-456-7890">
            </div>

            <p>Tipo de administrador</p> 
            <select class="form-select" name="tipo_administrador" aria-label="Default select example" ariaplaceholder="Tipo de administrador">
                <option selected disabled>Tipo de administrador</option>
                <option value="General">General</option>
                <option value="Comunidad">De comunidad</option>
            </select>
  
            <div class="col-12" style="margin-top: 20px; text-align: center">
                <button type="submit" class="btn btn-primary">Agregar</button>
            
            </div>
        </div>

    </form>

   
    <style>
    .contenedor {
        display: flex;
        width: 100%;
        height: 100vh; 
    }

    .container {
        flex: 1; 
        padding: 20px;
        box-sizing: border-box; 
    }
    </style>
 
</body>
</html>