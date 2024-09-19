<?php
$servername = "localhost"; 
$username = "root";
$password = ""; 
$dbname = "bdartesanet";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: ERROR " . $conn->connect_error);
}
?>