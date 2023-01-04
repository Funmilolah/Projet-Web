<?php session_start(); ?>
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

      <?php session_name();
      ?>

      <?php $login = $_GET['pseudo'];
      $pass = $_GET['password'];
      $requete_connexion =  mysqli_query($connexion,'SELECT * FROM user WHERE user.pseudo = "$login" AND user.password = "$pass";');
      $ligne = mysqli_fetch_assoc($requete_connexion);
      #echo $ligne['id_user'];
      if (!isset($ligne)) {
        // code...
        #$pseudo = $_GET['pseudo'];
        #$pass = $_GET['password'];
        $_SESSION['login'] = $login;
        $_SESSION['pass'] = $pass ;
        #session_register("login");
        #session_register("pass");
        header("Location: home.php?".session_name()."=".session_id());
        exit();
        #$iduser = $ligne['id_user'];
        echo '<p> Perfect  <a href ="home.php ">Click here pour aller sur le site </a></p>';
      }else {
        echo '<p>Vous n êtes pas inscrit <p>
        <p><a href = "inscription.html">Clicquez ici pour vous inscrire</a></p>';
      }


      ?>
      <!--<form action="home.php" method="get">
        <input type="hidden" name="user" value="<?php echo $ligne['id_user']; ?>">
      </form>-->

  </body>
</html>
