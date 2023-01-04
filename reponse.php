<!DOCTYPE html>
<html >
  <head>
    <meta charset="utf-8">
    <title>Gamora</title>
    <link rel = stylesheet href = "style.css">
  </head>
  <body>
    <?php #$user = $_GET['user'] ;?>
    <form  method="get">
      <input type="hidden" name="user" value="<?php echo $user ; ?>">
    </form>
      <?php $connexion = mysqli_connect('localhost','root','');
      mysqli_query($connexion,'USE gamora;') or exit(mysqli_error($connexion));
      session_start();
      $util = mysqli_query($connexion, "SELECT id_user FROM user WHERE user.pseudo = '".$_SESSION['login']."';");
      $utilisateur = mysqli_fetch_assoc($util);
      mysqli_query($connexion,"INSERT INTO reponse ( id_sujet, id_user, reponse) VALUES ('".$_GET['sujet']."', '".$utilisateur['id_user']."', '".$_GET['reponse']."');");
      header("Location: forum.php");
      exit();?>
  </body>
</html>
