<?php
$mail = $_POST["correo"]
$contra = $_POST["contrasena"]

if(isset($_POST["iniciarsesion"]))
{
 SELECT * FROM registro(Correo, Contrasena)
}