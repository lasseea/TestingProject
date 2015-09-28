<?php
ob_start();

require_once 'core/init.php';

$user = new User();
if(Session::exists('home')) {
    echo '<p>', Session::flash('home'), '</p>';
}

?>
<!DOCTYPE html>
<html lang="da">
<head>

    <!-- Meta -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="styles/style.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Title -->
    <title><?php echo 'Multiple Choice Test - '.$title; ?></title>
    <!-- font for CSS -->
    <link href='https://fonts.googleapis.com/css?family=Lemon' rel='stylesheet' type='text/css'>
</head>

<body class="body">
<nav class="navbar navbar-inverse navbar-static-top" id="top">
    <div class="container">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Multiple Choice Test</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <?php
                    //Tests if user is logged in
                    if($user->isLoggedIn()) {
                        //header for logged in users:
                        ?>
                        <li><a href="logout.php">
                                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                                Sign out (<?php echo escape($user->data()->username); ?>)</a></li>
                    <?php
                    } else {

                        ?>
                        <li><a href="login.php">
                                <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
                                Login</a></li>
                        <li><a href="signup.php">Signup</a></li>
                    <?php
                    }

                    ?>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </div>
</nav>

<div class="container">
    <div class="pageContent">

