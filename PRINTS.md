
![Captura de Tela (3)](https://user-images.githubusercontent.com/99969693/201445297-d16af9c2-309f-433d-adf5-335506eff6e1.png)
![Captura de Tela (1)](https://user-images.githubusercontent.com/99969693/201445303-26dcd790-63ac-47c6-8d7c-679f8bb386ba.png)
![Captura de Tela (2)](https://user-images.githubusercontent.com/99969693/201445304-c572122a-4f10-477b-a13e-84f473930e87.png)


site do link abaixo: https://www.w3schools.com/php/php_mysql_select.asp

colocar dentro da pasta root (UsbWebServer):

~~~php
Example (PDO)
<?php
echo "<table style='border: solid 1px black;'>";
echo "<tr><th>Id</th><th>Firstname</th><th>Lastname</th></tr>";

class TableRows extends RecursiveIteratorIterator {
  function __construct($it) {
    parent::__construct($it, self::LEAVES_ONLY);
  }

  function current() {
    return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
  }

  function beginChildren() {
    echo "<tr>";
  }

  function endChildren() {
    echo "</tr>" . "\n";
  }
}

$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDBPDO";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $stmt = $conn->prepare("SELECT id, firstname, lastname FROM MyGuests");
  $stmt->execute();

  // set the resulting array to associative
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
    echo $v;
  }
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>
~~~

troquei (SELECT id, firstname, lastname FROM MyGuests) para ( SELECT departament_no, departament_name FROM departament )

![Captura de Tela (4)](https://user-images.githubusercontent.com/99969693/201447553-9f44aec7-4c87-442d-8132-a2f96c700723.png)
![Captura de Tela (1)](https://user-images.githubusercontent.com/99969693/201447559-831dd4eb-903f-414e-93a6-d71bde0b0551.png)
![Captura de Tela (2)](https://user-images.githubusercontent.com/99969693/201447565-ea014662-6776-4cad-a263-f3bbcdd0c66c.png)
![Captura de Tela (3)](https://user-images.githubusercontent.com/99969693/201447566-ae6b48ba-0254-4c04-b7a0-91b4b73e744d.png)


