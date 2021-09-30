<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<style>
  table{
    margin-top:10px;
    width:500px;
    border-collapse:collapse;
  }
  table, td, th{
    border: 1px solid #000;
    padding:10px;
  }

  th{
    text-align:left;
  }
</style>
<body>
<?php
include("./global.php");

$q = intval($_GET["q"]);

$conn = mysqli_connect($servername, $username, $password, $dbname);
if($conn->connect_error){
  die("Connection failed: ".$conn->connect_error);
}

mysqli_select_db($conn, $dbname);
$sql = "SELECT * FROM users WHERE id = '".$q."'";
$result = mysqli_query($conn, $sql);
// echo var_dump($result);

echo "<table>
<tr>
  <th>ID</th>
  <th>First name</th>
  <th>Email</th>
</tr>";

if($result->num_rows > 0){
  while($row = mysqli_fetch_array($result)){
    echo "<tr>";
    echo "<td>".$row["id"]."</td>";
    echo "<td>".$row["firstname"]."</td>";
    echo "<td>".$row["email"]."</td>";
    echo "</tr>";
  }
}
echo "</table>";
mysqli_close($conn);


?>
</body>
</html>