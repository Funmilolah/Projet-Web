<!DOCTYPE html>
<html >
  <head>
    <meta charset="utf-8">
    <title>Gamora</title>
    <link rel = stylesheet href = "style.css">
  </head>
  <body>
      <?php $connexion = mysqli_connect('localhost','root','');
      mysqli_query($connexion,'USE gamora;') or exit(mysqli_error($connexion));?>
    
      <?php $pseudo = $_GET['pseudo'];
      $pass = $_GET['password'];
      mysqli_query($connexion,"INSERT INTO user ( nom, email, password, pseudo) VALUES ( '".$_GET['name']."', '".$_GET['email']."', '".$_GET['password']."', '".$_GET['pseudo']."'); ");
      ?>
      <p> Vous avez été enregistré <br>
      <a href="index.html"> Connexion </a></p>
  </body>
</html>
