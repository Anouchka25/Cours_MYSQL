
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8" />
    <title>Résultat du formulaire</title>
  </head>
  
  <body>

  <header></header>
  <h1>La liste des utilisateurs inscrits</h1>
  <hr>
  <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bdformulaire";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";
 // On vérifie si la variable existe et sinon elle vaut NULL
$varRecherche = isset($_POST['recherche']) ? $_POST['recherche'] : NULL; 

$sql = "SELECT * FROM newtable WHERE nom LIKE '$varRecherche%' OR
 prenom LIKE '$varRecherche%'OR ville LIKE '$varRecherche%' ";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
   echo('<table border="1">
    <colgroup width =150 span=12></colgroup>
	<thead> <!-- En-tête du tableau -->
   <tr>
       <th>Id</th>
       <th>Nom</th>
       <th>Prénom</th>
       <th>Ville</th>
       </tr>
    </thead>
	<tbody> <!-- Corps du tableau --> ');
    while($donnees = $result->fetch_assoc()) {
        echo ('<tr>');
       echo ('<td>'.$donnees['id'].'</td>');
       echo ('<td>'.$donnees['nom'].'</td>');
       echo ('<td>'.$donnees['prenom'].'</td>');
       echo ('<td>'.$donnees['ville'].'</td>');
       echo('</tr>');
   }
       echo('<tbody>');
       echo('</table>');
} else {
    echo "0 results";
}
$conn->close();
       
  ?>
  
  </body>
  
</html>
