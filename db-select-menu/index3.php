<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<script>
  function UserData(str){
    if(str.length == 0){
      document.getElementById("hint").innerHTML = ""
      return
    }else{
      if(window.XMLHttpRequest){
        xmlhtpp = new XMLHttpRequest()
      }else{
        // new e6 for xml req..
        xmlhtpp = new ActiveXObject("Microsoft.XMLHTPP")
      }
    }
    xmlhtpp.onreadystatechange = () => {
      if(xmlhtpp.readyState == 4 && xmlhtpp.status == 200){
        document.getElementById("hint").innerHTML = xmlhtpp.responseText
      }
    }
    xmlhtpp.open("GET", "dbcon.php?q="+str)
    xmlhtpp.send()
  }
</script>
<body>
<?php 
include("./global.php");
// create connction
$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error){
  die("Connection failed: ".$conn->connect_error);
}

$sql = "SELECT id, firstname, lastname, email FROM users ORDER BY firstname";
$result = $conn->query($sql);

if($result->num_rows > 0){
  echo '<select name="users" onchange="UserData(this.value)">';
  echo "<option disabled selected>Select</option>";
  while($row = $result->fetch_assoc()){
    echo '<option value="'.$row["id"].'">'.$row["firstname"].'</option>';
    // echo var_dump($row);
  }
  echo "</select>";
}else{
  echo "0 results";
}

$conn->close();

?>

<div id="hint">Display table</div>
</body>
</html>