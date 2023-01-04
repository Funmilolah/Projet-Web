<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>Gamora</title>
  </head>
  <body>
    <?php session_start(); ?>
    <!-- Menu -->
    <ul id="navigation">
      <li><a href="home.php">HOME</a></li>
      <li><a href="forum.php">FORUMS</a></li>
      <li><a href="about.html">ABOUT</a></li>
      <li><a href="contact.html">CONTACT US </a></li>
    </ul>
    <!-- Affichage d'un sujet -->

    <?php
    $connexion = mysqli_connect('localhost','root','');
    mysqli_query($connexion,'USE gamora;') or exit(mysqli_error($connexion));
    $requete = mysqli_query($connexion,'SELECT * FROM sujet, user WHERE sujet.id_user = user.id_user ;') ;
    ?>
    <div>
      <?php
      $ligne = mysqli_fetch_assoc($requete);
      { ?>
        <form action="sujet.php" method="get">
          <h1> Derniers sujet posté </h1>
          <input type="hidden" name="idsujet" value="<?php echo $ligne['id_sujet']; ?>"> <br>
          <input class="decor" type="submit" name="lib" value=<?php echo($ligne['lib_sujet']); ?>><br>
          <label name ="description"><?php echo($ligne['description']); ?></label><input type="hidden" name="description" value="<?php echo($ligne['description']); ?>"><br>
          <label name ="pseudo"><?php echo ($ligne['pseudo']);?></label><input type="hidden" name="pseudo" value="<?php echo ($ligne['pseudo']);?>">
          <label name ="datecrea"><?php echo($ligne['date_crea']); ?></label><input type="hidden" name="datecrea" value="<?php echo($ligne['date_crea']); ?>"><br>
        </form>
      <?php } ?>
    </div>

  </body>
</html>
