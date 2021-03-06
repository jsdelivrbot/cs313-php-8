<?php
// Start the session
session_start();

$cookie_name = "user";
$cookie_value = "Student";
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");

?>
<!DOCTYPE HTML>
<html lang="en-US">
  <head>
    <?php include '../modules/head.php';?>
    <title>Tours</title>
    <meta name="description" content="Browse our Around-The-World Tours!">
  </head>

  <body>
    <header>
      <?php include '../modules/header.php';?>
    </header>

    <main>
      <article>
        <section class="container">
          <h1>Browse our Tours!</h1>
          <div class="row">
            <div class="col-sm">
              <img src="../img/china.jpg" alt="Image of China">
              <h2>China</h2>
              <a href="china.php" class="btn btn-primary" target="_blank">Travel to China</a>
<!--                <input type="submit" name="China" value="Travel to China" class="btn btn-primary">-->
<!--                <input type="hidden" name="action" value="China">-->
            </div>
            <div class="col-sm">
              <img src="../img/japan.jpg" alt="Image of Japan">
              <h2>Japan</h2>
              <a href="japan.php" class="btn btn-primary" target="_blank">Travel to Japan</a>
            </div>
            <div class="col-sm">
              <img src="../img/india.jpg" alt="Image of India">
              <h2>India</h2>
              <a href="india.php" class="btn btn-primary" target="_blank">Travel to India</a>
            </div>
          </div>

          <div class="row">
            <div class="col-sm">
              <img src="../img/new york.jpg" alt="Image of New York">
              <h2>New York</h2>
              <a href="new-york.php" class="btn btn-primary" target="_blank">Travel to New York</a>
            </div>
            <div class="col-sm">
              <img src="../img/las vegas.jpg" alt="Image of Las Vegas">
              <h2>Las Vegas</h2>
              <a href="las-vegas.php" class="btn btn-primary" target="_blank">Travel to Las Vegas</a>
            </div>
            <div class="col-sm">
              <img src="../img/hawaii.jpg" alt="Image of Hawaii">
              <h2>Hawaii</h2>
              <a href="hawaii.php" class="btn btn-primary" target="_blank">Travel to Hawaii</a>
            </div>
          </div>

          <div class="row">
            <div class="col-sm">
              <img src="../img/italy.jpg" alt="Image of Italy">
              <h2>Italy</h2>
              <a href="italy.php" class="btn btn-primary" target="_blank">Travel to Italy</a>
            </div>
            <div class="col-sm">
              <img src="../img/london.jpg" alt="Image of London">
              <h2>London</h2>
              <a href="london.php" class="btn btn-primary" target="_blank">Travel to London</a>
            </div>
            <div class="col-sm">
              <img src="../img/paris.jpg" alt="Image of Paris">
              <h2>Paris</h2>
              <a href="paris.php" class="btn btn-primary" target="_blank">Travel to Paris</a>
            </div>
          </div>

          <div class="row">
            <div class="col-sm">
              <img src="../img/brazil.jpg" alt="Image of Brazil">
              <h2>Brazil</h2>
              <a href="brazil.php" class="btn btn-primary" target="_blank">Travel to Brazil</a>
            </div>
            <div class="col-sm">
              <img src="../img/greece.jpg" alt="Image of Greece">
              <h2>Greece</h2>
              <a href="greece.php" class="btn btn-primary" target="_blank">Travel to Greece</a>
            </div>
            <div class="col-sm">
              <img src="../img/australia.jpg" alt="Image of Australia">
              <h2>Australia</h2>
              <a href="australia.php" class="btn btn-primary" target="_blank">Travel to Australia</a>
            </div>
          </div>
        </section>
      </article>
    </main>

    <footer>
      <?php include '../modules/footer.php';?>
    </footer>
    <?php include '../modules/scripts.php';?>
  </body>
</html>
