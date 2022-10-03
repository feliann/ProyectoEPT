<?php
$conn = mysqli_connect("localhost", "root", "rootroot", "proyecto");
$rows = mysqli_query($conn, "SELECT * FROM rentar");
?>
<table border = 1 cellpadding = 10>
  <tr>
    <td></td>
    <td>Nombre</td>
    <td>Apellido</td>
    <td>Telefono</td>
    <td>Direccion</td>
  </tr>
  <?php $i = 1; ?>
  <?php foreach($rows as $row) : ?>
    <tr>
      <td><?php echo $i++; ?></td>
      <td><?php echo $row["Nombre"]; ?></td>
      <td><?php echo $row["Apellido"]; ?></td>
      <td><?php echo $row["Telefono"]; ?></td>
      <td><?php echo $row["Direccion"]; ?></td>
    </tr>
  <?php endforeach; ?>
</table>