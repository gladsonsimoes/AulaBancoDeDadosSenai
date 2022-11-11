
![Captura de Tela (3)](https://user-images.githubusercontent.com/99969693/201445297-d16af9c2-309f-433d-adf5-335506eff6e1.png)
![Captura de Tela (1)](https://user-images.githubusercontent.com/99969693/201445303-26dcd790-63ac-47c6-8d7c-679f8bb386ba.png)
![Captura de Tela (2)](https://user-images.githubusercontent.com/99969693/201445304-c572122a-4f10-477b-a13e-84f473930e87.png)


site do link abaixo: https://www.w3schools.com/php/php_mysql_select.asp

colocar dentro da pasta root:

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
