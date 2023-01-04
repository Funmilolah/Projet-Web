<html>
    <head>
        <link rel = stylesheet href = "style.css">
        <title>Gamora</title>
    </head>
    <body>
      <?php session_start();
      $idsujet = $_GET['idsujet']; ?>
        <?php $connexion = mysqli_connect('localhost','root','');
        mysqli_query($connexion,'USE gamora;') or exit(mysqli_error($connexion));?>
        <!-- Menu -->
        <ul id="navigation">
            <li><a href="home.php">HOME</a></li>
            <li><a href="forum.php">FORUMS</a></li>
            <li><a href="about.html">ABOUT</a></li>
            <li><a href="contact.html">CONTACT US </a></li>
        </ul>

        <!-- Code pour afficher les réponses -->
        <div class="">
          <p>
            <h3><?php echo $_GET['lib'];?></h3><br>
            <?php echo $_GET['description'];?><br>
            Auteur : <?php echo $_GET['pseudo'] ;?> Date : <?php echo $_GET['datecrea']; ?><br>
          </p>
        </div>
          <?php
          $req2 = mysqli_query($connexion,"SELECT pseudo, reponse, id_sujet  FROM reponse,  user WHERE reponse.id_sujet = '$idsujet' AND reponse.id_user = user.id_user");?>

          <?php while ($line = mysqli_fetch_assoc($req2)) { ?>
            <div class="">
              <?php if($ligne['id_sujet']=$idsujet) { ?>
                <p><?php echo $line['reponse']; ?><br>
                pseudo : <?php echo $line['pseudo'];?></p>
            <?php }
              else {
                break;
              }?>
            </div>
          <?php }?>
          <p></p>




        <!--Insérer une nouvelle reponse -->
        <form  action = "reponse.php" method="get">
            <input type="hidden" name="sujet" value="<?php echo $idsujet ; ?>">
            <label for="reponse">Votre réponse :</label><input type="text" name="reponse" value="">
            <input class="bleu" type="submit" name="valider" value="Valider">
        </form>



    </body>
</html>
