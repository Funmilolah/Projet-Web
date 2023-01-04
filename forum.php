
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>Gamora</title>
  </head>
  <body>
    <?php session_start(); ?>
    <?php
  $connexion = mysqli_connect('localhost','root','');
  mysqli_query($connexion,'USE gamora;') or exit(mysqli_error($connexion));
  $requete = mysqli_query($connexion,'SELECT * FROM sujet, user WHERE sujet.id_user = user.id_user ;') ;
  ?>

    <!-- Menu -->
    <ul id="navigation">
      <li><a href="home.php">HOME</a></li>
      <li><a href="forum.php">FORUMS</a></li>
      <li><a href="about.html">ABOUT</a></li>
      <li><a href="contact.html">CONTACT US </a></li>
    </ul>

    <!-- Affichage d'un sujet -->
    <?php while($ligne = mysqli_fetch_assoc($requete))
    { ?>
      <div >
        <form action="sujet.php" method="get">
          <input type="hidden" name="idsujet" value="<?php echo $ligne['id_sujet']; ?>"> <br>
          <input class="decor" type="submit" name="lib" value=<?php echo($ligne['lib_sujet']); ?>><br>
          <label name ="description"><?php echo($ligne['description']); ?></label><input type="hidden" name="description" value="<?php echo($ligne['description']); ?>"><br>
          <label name ="pseudo"><?php echo ($ligne['pseudo']);?></label><input type="hidden" name="pseudo" value="<?php echo ($ligne['pseudo']);?>">
          <label name ="datecrea"><?php echo($ligne['date_crea']); ?></label><input type="hidden" name="datecrea" value="<?php echo($ligne['date_crea']); ?>"><br>
        </form>
        <p></p>
      </div>
  <?php }?>

  <!-- Entrer un nouveau sujet -->
  <form action="traitement_forum.php" method="post">

    <!-- pour la liste déroulante des thèmes -->
    <?php
    $connex = mysqli_connect('localhost','root','');
    mysqli_query($connex,'USE gamora;') or exit(mysqli_error($connex));
    $requete = mysqli_query($connex,'SELECT * FROM theme ;') ;
    ?>
    <label for="form_theme"> Thème :</label><select name="form_theme" id="form_theme">
    <?php
    while ($ligne = mysqli_fetch_assoc($requete))
    { ?>
      <option value=<?php print($ligne['id_theme'] ) ?> > <?php print($ligne['lib_theme'] )?></option>
    <?php } ?>
  </select><br>

    <label for="form_sujet"> sujet :</label><input type="text" name="form_sujet" id="form_sujet"><br>
    <label for="form_description"> Description :</label><input type="textarea" name="form_description" id="form_description"><br>
    <input class="bleu" type="submit" name="enregistrer" value="Enregistrer">
    </form>
  </body>
</html>
