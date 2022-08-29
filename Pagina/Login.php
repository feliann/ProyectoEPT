<?php
include ("Conexion.php")

$mail = $_POST["Correo"];
$contra = $_POST["Contrasena"];

if(isset($_POST["iniciarsesion"]))
{
   $query = mysqli_query($conn,"SELECT * FROM registro WHERE Correo = '$mail' AND Contrasena = '$contra'");
   $nr = mysqli_num_rows($query);

   if($nr == 1)
   {
       echo "<script> alert('Bienvenido'); window.location= 'PaginaPrincipal.php' </script>";
   }
   else
   {
    echo "<script> alert('U suario inexistente'); window.location= 'Login.php' </script>";
   }
}
if(isset($_POST["registro"])) 
{
 
}

