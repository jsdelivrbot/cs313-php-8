<?php
//Start the session
session_start();

try{
  $dbUrl = getenv('DATABASE_URL');
  $dbopts = parse_url($dbUrl);
  $dbHost = $dbopts["host"];
  $dbPort = $dbopts["port"];
  $dbUser = $dbopts["user"];
  $dbPassword = $dbopts["pass"];
  if(!empty($dbopts["path"])){
    $dbName = ltrim($dbopts["path"],'/');
  }else{
    $dbName = $dbase;
  }
  $db = new PDO("pgsql:host=$dbHost;port=$dbPort;dbname=$dbName", $dbUser, $dbPassword);
}
catch (PDOException $ex)
{
  echo 'Error!: ' . $ex->getMessage();
  die();
}

if (!$_SESSION['loggedin']) {
  header('Location: login.php');
}
?>
<!DOCTYPE HTML>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <title>Account</title>
    <meta name="description" content="Account">
    <?php include '../modules/head.php';?>
  </head>

  <body>
    <header>
      <?php include '../modules/header.php';?>
    </header>

    <main>
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <?php
            if (isset($_SESSION['loggedin'])){

            $username = $_SESSION['clientData']['clientusername'];

              echo "<h1>Welcome " . $username . "</h1>";
            }
            ?>
            <?php if (isset($msg)){ echo $msg;} ?>
            <a href="index.php" id="access" class="btn btn-primary" title="Click to Access Generator">ACCESS GENERATOR</a>
          </div>
        </div>
      </div>
    </main>

    <footer>
      <?php include '../modules/footer.php';?>
    </footer>
    <?php include '../modules/scripts.php';?>
  </body>
</html>
