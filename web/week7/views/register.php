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
?>
<!DOCTYPE HTML>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <title>Registration</title>
    <meta name="description" content="Registration">
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
            <h1>User Registration</h1>

            <?php if (isset($msg)){ echo $msg;} ?>

            <form method="post" action="controller.php">
              <div class="form-group">
                <label for="clientusername">Username</label>
                <input type="text" name="clientusername" class="form-control" placeholder="Sherlock Holmes" autofocus required>
                <label for="clientpassword">Password</label>
                <input type="password" name="clientpassword" class="form-control" placeholder="FunkyChicken92!" pattern="(?=^.{8,}$)(?=.*\d)(?=.*\W+)(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="Passwords must be at least 8 characters and contain at least 1 number, 1 capital letter and 1 special character" required>
                <input type="submit" value="REGISTER" id="reg" class="btn btn-primary">
                <input type="hidden" name="action" value="register">
                <p><a href="login.php" class="btn btn-secondary">LOGIN</a></p>
              </div>
            </form>
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
