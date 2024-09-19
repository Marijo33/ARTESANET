<?php
$servername = "bszo4fz6y0m2gks03qzs-mysql.services.clever-cloud.com";  // Ejemplo: "babcde1234.cloud.clever-cloud.com"
$username = "uvjgxfcgbwukjadi";               // Nombre de usuario de la base de datos
$password = "dbilx8BF62FACIi2fEne";             // Contraseña de la base de datos
$dbname = "bszo4fz6y0m2gks03qzs";        // Nombre de la base de datos
$port = "3306";                          // Puerto (por defecto, es 3306 para MySQL)

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: ERROR " . $conn->connect_error);
}
?>