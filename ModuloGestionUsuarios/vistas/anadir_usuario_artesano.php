<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('../inc/head.php'); ?>
</head>
<body>
    <?php include('../inc/navbar.php'); ?>

    <div class="container">
        <p class="fw-normal fs-2" style="margin: 3px; font-family: 'Arial Narrow', Arial, sans-serif; text-align:center">Agregar usuario artesano</p>
    
    </div>
    <div class="contenedor">
        <div class="container ">
            <!-- Contenido de la izquierda -->
            <div style="text-align: center; margin: 10px"><img src='../img/logo.jpg' class="img-thumbnail" alt="..." width="250" height="250" ></div>
            <div class="mb-3">
                <input class="form-control" type="file" id="formFile">
            </div>
            <form class="row g-3" style="padding-bottom: 20px ;">
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
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Email</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="ejemplo@gmail.com">
                </div>
                
            </form>


            
        </div>
        <div class="container ">

            <form class="row g-3">

                <div class="col-md-6">
                    <label for="fecha-nacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" >
                </div>

            
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Telefono</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
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
                    <label for="inputCity" class="form-label">ID comunidad</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>

                <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                    <label for="floatingTextarea2">Descripcion</label>
                </div>


                
                
                
                <div class="col-12" style="margin: 20px; text-align: center">
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