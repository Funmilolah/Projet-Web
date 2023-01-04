<?php
  session_start();
  $connection = mysqli_connect('localhost','root','');
  mysqli_query($connection,'USE gamora;') or exit(mysqli_error($connexion));
  $util = mysqli_query($connection, "SELECT id_user FROM user WHERE user.pseudo = '".$_SESSION['login']."';");
  $utilisateur = mysqli_fetch_assoc($util);
  mysqli_query($connection,"INSERT INTO sujet(id_theme,id_user,lib_sujet, description) VALUES ('".$_POST['form_theme']."','".$utilisateur['id_user']."','".$_POST['form_sujet']."','".$_POST['form_description']."');");
  echo'<p> Sujet posté</p>';
  echo'<a href = "forum.php">retour</a>';
?>
